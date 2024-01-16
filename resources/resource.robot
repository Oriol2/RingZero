*** Settings ***
Documentation  Capabilities file
Library  AppiumLibrary
Resource  ../resources/string.robot

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_DEVICE_NAME}        R58N323F7AN
${ANDROID_APP}                ${CURDIR}/../apps/Todoist_v11222.apk
${ANDROID_APP_PACKAGE}        ${APP_ID}
${ANDROID_APP_ACTIVITY}       com.todoist.activity.HomeActivity


${IOS_AUTOMATION_NAME}        XCUITest
${IOS_APP}                    ${CURDIR}/../apps/Todoist_v11222.ipa
${IOS_PLATFORM_NAME}          iOS
${IOS_PLATFORM_VERSION}       IOS_PLATFORM_VERSION=13.6
${IOS_DEVICE_NAME}            iPhone 14
${IOS_APP_PACKAGE}            ${APP_ID}
${IOS_APP_ACTIVITY}           com.todoist.activity.HomeActivity

*** Keywords ***
Open Android Test App
  open application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  deviceName=${ANDROID_DEVICE_NAME}  app=${ANDROID_APP}
  ...  appPackage=${ANDROID_APP_PACKAGE}  appActivity=${ANDROID_APP_ACTIVITY}

Open iOS Test App
  open application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
  ...  app=${IOS_APP}  platformName=${IOS_PLATFORM_NAME}  platformVersion=${IOS_PLATFORM_VERSION}
  ...  deviceName=${IOS_DEVICE_NAME}  appPackage=${IOS_APP_PACKAGE}  appActivity=${IOS_APP_ACTIVITY}
