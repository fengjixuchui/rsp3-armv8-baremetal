/*
 * InterruptManager.cpp
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */
#include <interrupt/InterruptManager.h>
#include <arch/common_aarch64/registers/system_common_registers.h>

int InterruptManager::init(void * vecAddr,bool a3vEn,EOIMode mode,uint8_t lowestPrty,uint8_t initPrty)
{
	int status = 0;

	// shutdown all interrupts
	cpuIntEnable<IRQ>(false);
	cpuIntEnable<FIQ>(false);
	cpuIntEnable<SError>(false);
	cpuIntEnable<Debug>(false);

	// determine if GICv3/v4 supported
	if(!systemRegistersSupported())
		return 1;

	// set exception vector of EL1
	auto vbar=RegVBAR_EL1::make(reinterpret_cast<uint64_t>(vecAddr));
	vbar.write();

	status = GICDistributor::init(initPrty);
	if(status != 0)
		return status;

	status = GICCPUInterface::init(lowestPrty,a3vEn,mode);
	if(status != 0)
		return status;

	status = GICRedistributor::init(initPrty);
	if(status != 0)
		return status;

	return status;
}

template <InterruptManager::CPUIntBit intBit>
void InterruptManager::cpuIntEnable(bool v)
{
	auto daif=RegDAIF::read();
	setBit(daif.asuint32_t(), intBit, !(v));
	daif.write();
}

void InterruptManager::clearAllPendings()
{
	GICDistributor::clearAllPendings();
	GICRedistributor::clearAllPendings();
}
void InterruptManager::disableAllInterrupts()
{
	GICDistributor::disableAllInterrupts();
}

volatile uint32_t & InterruptManager::readWriteWord(size_t offset0,size_t offsetOther,int grp)
{
	if(grp==0)
		return GICRedistributor::reg32(offset0);
	else
		return GICDistributor::reg32(offsetOther + grp*4);
}

