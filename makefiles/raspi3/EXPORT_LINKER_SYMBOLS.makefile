# ALL
EXPORT_LINKER_SYMBOLS += $(EXPORT_ALL)

# elf相关
EXPORT_LINKER_SYMBOLS += IMAGE_BASE  SINGLE_GEN_SIZE CODE_OFFSET 

# RAM
EXPORT_LINKER_SYMBOLS += RAM_START RAM_SIZE

# 导出内存布局的size
EXPORT_LINKER_SYMBOLS += DTB_SIZE STACK_EL2_3_SIZE STACK_SIZE AHEAD_CODE_SIZE CODE_SIZE \
		    INITRAM_SIZE USER_SPACE_SIZE   DATA_SIZE  VIDEO_RAM_SIZE
# 导出内存布局的start
EXPORT_LINKER_SYMBOLS += DTB_START STACK_EL2_3_START STACK_START AHEAD_CODE_START CODE_START \
			INITRAM_START USER_SPACE_START DATA_START VIDEO_RAM_START
# 其他
EXPORT_LINKER_SYMBOLS += USER_SPACE_DD_START

# user
EXPORT_LINKER_SYMBOLS += USER_RAM_START USER_RAM_SIZE \
		USER_STACK_SIZE USER_CODE_SIZE USER_INITRAM_SIZE

# fixup loader address
EXPORT_LINKER_SYMBOLS += __load_addr_fixup 