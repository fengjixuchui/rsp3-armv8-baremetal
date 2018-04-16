/*
 * BCM2835InterruptController.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */


#include <interrupt/BCM2835InterruptController.h>
#include <generic_util.h>

uint8_t BCM2835InterruptController::locateInterrupt() const
{
	auto i=findFirstSet(static_cast<uint8_t>(reg32(PENDING_IRQ_BASIC)));//只查找低8位
	if(!isMax(i))
		return i;
	i=findFirstSet(reg32(PENDING_IRQ_1));
	if(!isMax(i))
		return i+8;
	i=findFirstSet(reg32(PENDING_IRQ_2));
	if(!isMax(i))
		return i+40;//32+8
	return i;//failed
}

void   BCM2835InterruptController::deactivateInterrupt(uint8_t src)
{
	assert(src< INT_NUM);
	uint8_t grp=0;
	uint8_t offset=src; // default src<8
	if(src>=8)
	{
		grp=(src-8)/32;
		offset=(src-8)%32;
	}
	disableWord(grp) = (1u<<offset);
	enableWord(grp) = (1u<<offset);

}
