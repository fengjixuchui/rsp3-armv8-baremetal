################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_host.cpp 

OBJS += \
./src/memory/MemoryChunk.o \
./src/memory/MemoryManager_aarch64.o \
./src/memory/MemoryManager_host.o 

CPP_DEPS += \
./src/memory/MemoryChunk.d \
./src/memory/MemoryManager_aarch64.d \
./src/memory/MemoryManager_host.d 


# Each subdirectory must supply rules for building sources it contributes
src/memory/MemoryChunk.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/MemoryManager_aarch64.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/MemoryManager_host.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_host.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


