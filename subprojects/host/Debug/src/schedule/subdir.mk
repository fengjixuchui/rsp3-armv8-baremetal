################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp 

OBJS += \
./src/schedule/PidManager.o 

CPP_DEPS += \
./src/schedule/PidManager.d 


# Each subdirectory must supply rules for building sources it contributes
src/schedule/PidManager.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


