/*
 * BCM2836LocalIntController.h
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_BCM2836LOCALINTCONTROLLER_H_
#define INCLUDE_INTERRUPT_BCM2836LOCALINTCONTROLLER_H_
#include <io/MemBasedRegReader.h>
#include <generic/cpu.h>
#include <interrupt/GICDefinitions.h>
#include <generic_util.h>
/**
 *  common base = 0x4000_0000
 *
 *  一个local interrupt controller含有一个对统一的系统时钟的控制器：通过core_timer_XXX来访问
 *  注意， core_timer的频率仅仅是系统时钟的一半，因此一般需要设置增量为2.
 *  树莓派的系统时钟是1.2GHz, 而core_timer的频率计算为： core_freq = SYS_FREQ/divider, divider=2^31/prescalar_value
 */
class BCM2836LocalIntController
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		core_timer_ctrl=0,
		core_timer_prescaler=0x8, //prescalar
		gpu_int_route=0xC,
		core_timer_count_ls=0x1C,//LS,
		core_timer_count_ms=0x20,
		corex_timer_int_ctrl=0x40, // corex, 表明4个core中的任何一个，只需要加上4*cpuID()即得地址
		corex_mailbox_int_ctrl=0x50,
		corex_irq_source=0x60,
		corex_fiq_source=0x70,
		local_timer_ctrl=0x34,//bit 0-27=count-down value,bit 28=TimerEnable,bit29=IntEnable,bit30=res0,bit31=IntFlag(RO)
		local_timer_clear_reload=0x38, //bit31=clear int flag,bit30=reset count value to preset,not int
		local_timer_int_route = 0x24, //timer is the only local interrupt,bit0-2= 0b000(IRQ,Core0) to ob011(IRQ,Core3) ,0b100(FIQ,core0) to 0b111(FIQ,core3)
	};
	// 外设1-15之间的中断在SRC_PERI_FIRST，SRC_PERI_LAST之间（但是现在没有用）
	enum IntSource : IntID{ SRC_PHY_S_TIMER=0,SRC_PHY_NS_TIMER=1,SRC_HYP_TIMER=2,SRC_VIR_TIMER=3,SRC_MBOX_FIRST=4,SRC_MBOX_LAST=7,SRC_GPU=8,SRC_PMU=9,SRC_AXI=10,SRC_LOCAL_TIMER=11,SRC_PERI_FIRST=12,SRC_PERI_LAST=17};
	template <class ... Args>
	BCM2836LocalIntController(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
	{}
	/**
	 *
	 * @param cpuId
	 * @param irq_or_fiq 0=irq, others=fiq
	 * @return
	 */
	IntSource    locateInterrupt(size_t cpuId, int irq_or_fiq);

	AS_MACRO void localTimerWorkEnable(bool en){ setBit(reg32(local_timer_ctrl),28,en);}
	AS_MACRO void localTimerIntEnable(bool en){ setBit(reg32(local_timer_ctrl),29,en);}
	AS_MACRO void localTimerCountDownValue(uint32_t val) { setBits(reg32(local_timer_ctrl),0,27,val);}
	AS_MACRO void localTimerRecount(){ setBit(reg32(local_timer_ctrl),30,1);}
	AS_MACRO void localTimerClearIntFlag(){ setBit(reg32(local_timer_ctrl),31,1);}
	AS_MACRO void localTimerIntRoute(int core,int irq_or_fiq) {setBits(reg32(local_timer_int_route),0,2,(!!irq_or_fiq)*0b100 + core); }
	AS_MACRO void prescalarValue(uint32_t scalar) { reg32(core_timer_prescaler)=scalar;}

	uint64_t coreTimerCount() const;

	/**
	 *
	 * @param crystal_or_apb  0:从晶振片  1：从APB
	 * 注意：当选择APB时，频率只是系统频率的一半。
	 */
	AS_MACRO void coreTimerSource(int crystal_or_apb){setBit(reg32(core_timer_ctrl),8,!!(crystal_or_apb));}
	/**
	 *
	 * @param inc_1_or_2 0:1-increment 1:2-increment
	 */
	AS_MACRO void coreTimerIncrement(int inc_1_or_2){setBit(reg32(core_timer_ctrl),9,!!(inc_1_or_2));}
	AS_MACRO int coreTimerSource()const{return getBit(reg32(core_timer_ctrl),8);}
	AS_MACRO int coreTimerIncrement()const{return getBit(reg32(core_timer_ctrl),9);}

	void coreTimerFreq(size_t freq);
	size_t coreTimerFreq()const;

	void delayMS(size_t msec)const;


};

#ifndef _NOT_NEED_BCM2836LocalIntController
extern BCM2836LocalIntController localIntc;
#endif



#endif /* INCLUDE_INTERRUPT_BCM2836LOCALINTCONTROLLER_H_ */
