/*
 * ProgressManager.h
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESSMANAGER_H_
#define INCLUDE_SCHEDULE_PROGRESSMANAGER_H_

#include <data_structures/DoublyLinkedList.h>
#include <schedule/Process.h>

class ProcessManager{
public:
//	enum Config{ PROCESSOR_NUM=4 };
	using ProcessList = DoublyLinkedList<Process>;
	using ProcessLink = ProcessList::NodeType;

	ProcessManager();

	// 如果是单核的，则某一时刻只有一个PID在运行
	// 实际上即使是多核情况下，我们对某个核实际上只赋予一个唯一的正在运行的进程
	ProcessLink* currentRunningProcess();

	void     killProcess(ProcessLink *p);

	// 选择一个进程进行运行，如果有当前有正在运行的进程，则将其值为READY状态
	// 调度
	// 如果没有任何一个进程可以调度，也就是说当前没有进程运行，就绪队列没有进程，则等待。
	// TODO 这里不应当引入savedRegisters参数，因为并不是所有的架构都需要。
	// 这里或许传递一个CPU保存的参数会比较好，但是，目前最简单的方法就是传递该参数。
	void     scheduleNextProcess(uint64_t *savedRegsiers);

	template <class ... Args>
	ProcessLink*  createNewProcess(Args && ... initArgs);

	// 子进程会被加入到CREATED或者CREATED_INCOMPLETE
	ProcessLink*  forkProcess(ProcessLink *origin);

	// oldStatus表明p所在的组,缺省时使用p的状态
	void          changeProcessStatus(ProcessLink *p, Process::Status oldStatus,Process::Status newStatus);
	void          changeProcessStatus(ProcessLink *p,Process::Status newStatus);

private:
	// 当前队列
//	ForwardList<Process> _processList;
//	ForwardNode<Process*> _statedProcessList[Process::STATUS_NUM];
	ProcessList _statedProcessList[Process::STATUS_NUM];
};

//class KernelArgument;
extern ProcessManager processManager;
//extern KernelArgument kernArgs[ProcessManager::PROCESSOR_NUM];


#include <templates_implementation/schedule/ProcessManager.h>


#endif /* INCLUDE_SCHEDULE_PROCESSMANAGER_H_ */