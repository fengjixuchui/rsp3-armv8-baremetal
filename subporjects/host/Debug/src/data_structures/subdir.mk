################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/data_structures/String.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/data_structures/StringRef.cpp 

OBJS += \
./src/data_structures/String.o \
./src/data_structures/StringRef.o 

CPP_DEPS += \
./src/data_structures/String.d \
./src/data_structures/StringRef.d 


# Each subdirectory must supply rules for building sources it contributes
src/data_structures/String.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/data_structures/String.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/data_structures/StringRef.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/data_structures/StringRef.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


