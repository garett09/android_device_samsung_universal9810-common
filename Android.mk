# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

LOCAL_PATH := $(call my-dir)

ifneq ($(filter crownlte starlte star2lte, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

EGL_LIBS := libOpenCL.so libOpenCL.so.1 libOpenCL.so.1.1

EGL_32_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(EGL_LIBS))
$(EGL_32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "EGL 32 lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib/egl/libGLES_mali.so $@

EGL_64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib64/,$(EGL_LIBS))
$(EGL_64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "EGL 64 lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib64/egl/libGLES_mali.so $@

VULKAN_LIBS := vulkan.exynos9810.so

VULKAN_32_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/hw/,$(VULKAN_LIBS))
$(VULKAN_32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Copy Vulkan lib: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp $(TARGET_OUT_VENDOR)/lib/egl/libGLES_mali.so $@

VULKAN_64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib64/hw/,$(VULKAN_LIBS))
$(VULKAN_64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Copy Vulkan lib: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) cp $(TARGET_OUT_VENDOR)/lib64/egl/libGLES_mali.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_32_SYMLINKS) $(EGL_64_SYMLINKS) $(VULKAN_32_SYMLINKS) $(VULKAN_64_SYMLINKS)

endif

