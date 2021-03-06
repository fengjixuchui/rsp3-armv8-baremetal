# ALL
EXPORT_CXX_MACROS += $(EXPORT_ALL)
# 目标架构信息
EXPORT_CXX_MACROS += TARGET_ARCH_IS_$(TARGET_ARCH)

# 内存信息
EXPORT_CXX_MACROS += RAM_START RAM_SIZE CODE_OFFSET

# 内核起始地址相对于CODE区域的偏移
EXPORT_CXX_MACROS += KERNEL_OFFSET KERNEL_HIGH_BASE

# 导出外设相关的信息
EXPORT_CXX_MACROS += PERIPHBASE PERIPHSIZE UART_BASE UART0_BASE \
	GPIO_BASE MBOX_BASE SYS_TIMER_BASE
	
# user
EXPORT_CXX_MACROS += USER_DATA_START USER_DATA_SIZE USER_STACK_START

