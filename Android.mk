LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under)
LOCAL_SRC_FILES += $(call all-java-files-under, dependencies)

LOCAL_PACKAGE_NAME := com.todotxt.todotxttouch
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

# List of static libraries to include in the package
LOCAL_JAVA_LIBRARIES :: signpost-commons-http \
                        signpost-core \
		        diffutils \
			android.test.runner \
                        apache-mime4j \
			dropbox-android-sdk \
			httpmime \
 			libphonenumber \
			android.support.v4 \
			android.support.v7.app \
			core-junit

LOCAL_RESOURCE_DIR += dependencies/ActionBar-PullToRefresh-e8e6d2b58c/library/res \
		      dependencies/JakeWharton-ActionBarSherlock-c47975f/actionbarsherlock/res \
		      dependencies/chuckbjones-SwipeToDismissUndoList-ec6bf93/res

LOCAL_AAPT_FLAGS := --auto-add-overlay \
                    --extra-packages com.actionbarsherlock

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := signpost-commons-http:libs/signpost-commonshttp4-1.2.1.1.jar \
                        		signpost-core:libs/signpost-core-1.2.1.1.jar \
                               		diffutils:libs/diffutils-1.2.1.jar \
			       		apache-mime4j:libs/apache-mime4j-0.6.jar \
			       		dropbox-android-sdk:libs/dropbox-android-sdk-1.5.4.jar \
			       		httpmime:libs/httpmime-4.0.3.jar \
			       		libphonenumber:libs/libphonenumber-4.1.jar \
					android.support.v4:libs/android-support-v4.jar \
					android.support.v7.app:libs/android-support-v7-appcompat.jar

include $(BUILD_MULTI_PREBUILT)
