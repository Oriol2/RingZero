*** Settings ***
Documentation  IOS Locator file
Resource  ../resources/string.robot

*** Variables ***
${GOOGLE_BUTTON_ID}  //XCUIElementTypeButton[@name="${GOOGLE_BUTTON_TEXT}"]
${GOOGLE_CONTINUE_BUTTON_ID}  //XCUIElementTypeButton[@name="${LOGIN_EMAIL_CONFIRMATION_TEXT}"]
${FACEBOOK_BUTTON_ID}  //XCUIElementTypeButton[@name="${FACEBOOK_BUTTON_TEXT}"]
${TODOIST_LOGO_ID}  //XCUIElementTypeWebView[@id="logo"]
${TODOIST_MENU_ID}  //XCUIElementTypeStaticText[@name="${TODOIST_MENU_TEXT}"]
${SETTINGS_CONTENT_DESK}  //XCUIElementTypeStaticText[@name="${SETTINGS_TEXT}"]
${NOTIFICATION_START_SCROLL_XPATH}  //XCUIElementTypeStaticText[@name="${NOTIFICATIONS_TEXT}"]
${GENERAL_END_SCROLL_XPATH}  //XCUIElementTypeStaticText[@name="${GENERAL_TEXT}"]
${LOGOUT_POPUP_CONFIRMATION_ID}  //XCUIElementTypeStaticText[@name="${LOGOUT_POPUP_CONFIRMATION_TEXT}"]
${LOGOUT_POPUP_YES_ID}  //XCUIElementTypeButton[@name="${YES_TEXT}"]
${LOGOUT_POPUP_NO_ID}  //XCUIElementTypeButton[@name="${NO_TEXT}"]