# Uber Optimizations
CLANG_O3 := true
STRICT_ALIASING := false
GRAPHITE_OPTS := false
ENABLE_GCCONLY := false

# Kernel Toolchain
ifneq ($(FORCE_32_BIT),true)
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9-uber/bin
else
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.9-uber/bin
endif

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9-uber
