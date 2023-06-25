LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_LDLIBS := -llog
LOCAL_MODULE := local-socket
LOCAL_SRC_FILES := local-socket.cpp
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := readlink
LOCAL_SRC_FILES := readlink.cpp
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := file-utils
LOCAL_SRC_FILES := file-utils.cpp
LOCAL_STATIC_LIBRARIES := libreadlink
include $(BUILD_SHARED_LIBRARY)

