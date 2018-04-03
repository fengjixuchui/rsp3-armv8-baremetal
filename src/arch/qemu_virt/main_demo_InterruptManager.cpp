
#include <def.h>
#include <IntegerFormatter.h>
#include <arch/common_aarch64/timer_registers.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <arch/common_aarch64/gicv3_registers.h>
#include <interrupt/InterruptManager.h>

extern char ExceptionVectorEL1[];

int main()
{
	// determinte current EL
	auto curEl = RegCurrentEL::read();
	curEl.dump();
	if(curEl.EL != 1)
	{
		kout << FATAL << "This program is designed to run at EL1\n";
		return 1;
	}

	InterruptManager intm;
	// determine if GICv3/v4 supported
	if(!intm.systemRegistersSupported())
	{
		kout << FATAL << "Not supporting GICv3/v4\n";
		return 1;
	}

	// select SP to use SP_EL1
	auto spsel = RegSPSel::read();
	spsel.dump();
	spsel.SP=1;
	spsel.write();

	intm.vectorAddr(ExceptionVectorEL1);
	intm.enableICCRegisters(true);

	// redistributor setting
	intm.awakeRedistributor();



	// CPU interface setting
	// program GIC  to enable irq from system timer,using system registers
	// see if system reigster enabled
	kout << INFO << "CPU interface setting\n";

	// setup control register
	auto gicCtrl = RegICC_CTLR_EL1::read();
	gicCtrl.dump();
	gicCtrl.A3V=1;
	gicCtrl.EOImode=0; // EOI at the same time
	gicCtrl.write();

	// enable group 0 and group 1
	RegICC_IGRPEN0_EL1 grp0en = RegICC_IGRPEN0_EL1::read();
//	grp0en.Enable=1;
	grp0en.write();
	RegICC_IGRPEN1_EL1 grp1en = RegICC_IGRPEN1_EL1::read();
	grp1en.Enable=1; // has effect
	grp1en.write();
	RegICC_IGRPEN0_EL1::read().dump();
	RegICC_IGRPEN1_EL1::read().dump();
	// read binary point
	auto b0p = RegICC_BPR0_EL1::read();
	auto b1p = RegICC_BPR1_EL1::read();
	b0p.dump();
	b1p.dump();

	// read sgi priority
	auto sgi0p = RegGICR_IPRIORITYR0::read();
	sgi0p.dump();

	// read  gic
	auto igrpr0 = RegGICR_IGROUPR0::read();
	auto sgiEn = RegGICR_ISENABLER0::read();
	igrpr0.dump();
	sgiEn.dump();
	igrpr0.InGrp = 0xFFFFFFFF; //sgi for grp 1, NOTE:only one group is enabled,either FIQ(group0) or IRQ(group1)
	sgiEn.Enables = 0xFFFFFFFF;
	igrpr0.write();
	sgiEn.write();
	RegGICR_ICFGR0::read().dump(); // 0xaaaaaaaa
	RegGICR_ICFGR1::read().dump(); // 0
	RegGICR_ICFGR1 redistrCfg1 { 0 };
	redistrCfg1.Configs = 0xaaaaaaaa;
	redistrCfg1.write(); // 0b101010..., means that it is edge triggered
	RegGICR_ICFGR1::read().dump();
	RegGICR_ICENABLER0::read().dump(); // read says that only SGIs are enabled
	RegGICR_ISENABLER0 redistrEn0 {0};
//	RegGICR_ICENABLER0 redistrCEn0 {0};
//	redistrCEn0.ClearEnables = 0x8; // just becomes pending
	redistrEn0.Enables = 0xffffffff; // allow all PPIs and SGIs
//	redistrCEn0.write();
	redistrEn0.write(); // will override ClearEnables
	RegGICR_ISENABLER0::read().dump();
	RegGICR_ICENABLER0::read().dump(); // now all are enabled



	// write to priority
	auto maskPrty = RegICC_PMR_EL1::read();
	maskPrty.dump();
	maskPrty.Priortiy = 0xFE; // if 0xFF,pass everything,lowest,but not idle. If it is 0, then it has effect
	maskPrty.write();
	RegICC_PMR_EL1::read().dump();
	auto runningPrty = RegICC_RPR_EL1::read();
	runningPrty.dump();

	auto int3prty = RegGICR_IPRIORITYR0::read();// read does not return true value,just 0
	int3prty.p3 = 0xF0; //if lower, it becomes pending rather than processing
	int3prty.write();
	RegGICR_IPRIORITYR0::read().dump();
	auto ppi3prty = RegGICR_IPRIORITYR7::read();
	ppi3prty.dump();

	ppi3prty.p28 = 0xF0;
	ppi3prty.p29 = 0xF0;
	ppi3prty.p30 = 0xF0;
	ppi3prty.p31 = 0xF0;
	ppi3prty.write();
	RegGICR_IPRIORITYR7::read().dump();


	// PE settings, DAIF
	kout << INFO <<"Enabling DAIF \n";
	auto daif= RegDAIF::read();
	daif.dump();
	// unmask those registers
	daif.I=0;//has effect
	daif.F=0;
	daif.A=0;
	daif.write(); // allow irq
	RegDAIF::read().dump();

	// global setting
	kout << INFO << "Distributor setting\n";
	auto distr = RegGICD_CTLR::read();
	distr.dump();
	distr.EnableGrp0=1;
	distr.EnableGrp1S=1;  // for EL=1,no effect
	distr.EnableGrp1NS=1; // has effect
	distr.write();
	RegGICD_CTLR::read().dump();
	RegGICD_ISENABLER0 distrEn0{0};
	distrEn0.Enables = 0xffffffff; // set 0 ignored
	distrEn0.write();
	RegGICD_ISENABLER0::read().dump();

	RegGICD_IIDR::read().dump();

	RegGICR_IPRIORITYR0::read().dump();

	// write to SGI register, to generate interrupts
//	auto sgi1=RegICC_SGI0R_EL1::read();
//	sgi1.dump();
	// read affinity values
	auto mpid = RegMPIDR_EL1::read();
	mpid.dump();
	kout << INFO <<  "Generating SGI \n";
	RegICC_SGI1R_EL1 sgi1 { 0 };
	sgi1.Aff3= mpid.Aff3;
	sgi1.Aff2= mpid.Aff2;
	sgi1.Aff1= mpid.Aff1;
	sgi1.TargetList = (0x1 << mpid.Aff0);// has effect,must target itself.
	sgi1.INTID=3;
	sgi1.IRM=0;
	sgi1.write();
	kout << INFO << "Generate again \n";
	sgi1.write();

//	RegICC_SGI0R_EL1 sgi0 { 0 }; // generate FIQ
//	sgi0.Aff3= mpid.Aff3;
//	sgi0.Aff2= mpid.Aff2;
//	sgi0.Aff1= mpid.Aff1;
//	sgi0.TargetList = (0x1 << mpid.Aff0);// has effect,must target itself.
//	sgi0.INTID=3;
//	sgi0.IRM=0;
//	sgi0.write();
//	kout << INFO << "Generate FIQ again \n";
//	sgi0.write();

	// program GIC to enable irq from system timer,using memory-mapped registers
	// .. TODO

	// program Generic Timer to produce event stream
	auto freq = RegCNTFRQ_EL0::read();
	freq.dump();

//	// generate event stream
//	auto kctrl = RegCNTKCTL_EL1::read();
//	kctrl.dump();
//	kctrl.EVNTEN = 1;
//	kctrl.EVNTI = 0xF;
//	kctrl.write(); // INTID=27
//	// enable EL1 physical timer
//	auto vctrl = RegCNTV_CTL_EL0::read();
//	vctrl.dump();
//	vctrl.ENABLE = 1;
//	vctrl.IMASK = 0;
//	vctrl.write();
//	for(size_t i=0;i!=5;++i)
//	{
//		RegCNTVCT_EL0::read().dump();
//		RegCNTV_CTL_EL0::read().dump();
//		for(size_t j=0;j!=0xfffffff;++j);
//	}
//	while(true);

	// set Compare value for physical timer
	auto cmpvPhy1 = RegCNTP_CVAL_EL0::read();
	cmpvPhy1.dump();
//	cmpvPhy1.CompareValue = 0x2a3a4a5a;
	cmpvPhy1.CompareValue = 0x3a4a5a;
	cmpvPhy1.write();

	// enable EL1 physical timer
	auto ctlPyh1=RegCNTP_CTL_EL0::read(); // INTID=30
	ctlPyh1.dump();
	ctlPyh1.ENABLE = 1;
	ctlPyh1.IMASK = 0;
	ctlPyh1.write();
//		for(size_t i=0;i!=10;++i)
//		{
//			RegCNTPCT_EL0::read().dump();
//			for(size_t j=0;j!=0xfffffff;++j);
//		}


	kout << INFO << "end main.\n";
//	size_t wakeUp=0;
//	while(true)
//	{
//		__asm__("wfe \n\t");
//		kout << "Wakeup:" << (wakeUp++) << "\n";
//	}
	return 0;
}


