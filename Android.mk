# Copyright (C) 2011 The Android-x86 Open Source Project

LOCAL_PATH := $(call my-dir)

# HAL module implemenation, not prelinked and stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := lights.$(TARGET_PRODUCT)
LOCAL_MODULE_TAGS := optional

ifeq ($(strip $(TARGET_PRODUCT)),s103t)
LOCAL_SRC_FILES := s103t_lights.c
include $(BUILD_SHARED_LIBRARY)
endif
