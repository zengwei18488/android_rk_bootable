LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := librkupdate
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a
ifneq ($(strip $(TARGET_2ND_ARCH)), )
  LOCAL_MULTILIB := both
  LOCAL_SRC_FILES_$(TARGET_ARCH) := lib64/librkupdate.a
  LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/librkupdate.a
else
  LOCAL_SRC_FILES := lib/librkupdate.a
endif

include $(BUILD_PREBUILT)
