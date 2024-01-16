*** Settings ***
Documentation  Android Locator file
Resource  ../resources/string.robot

*** Variables ***
${GOOGLE_BUTTON_ID}  com.todoist:id/btn_google
${GOOGLE_CONTINUE_BUTTON_ID}  com.google.android.gms:id/continue_button
${FACEBOOK_BUTTON_ID}  com.todoist:id/btn_facebook
${TODOIST_LOGO_ID}  com.todoist:id/logo
${TODOIST_MENU_ID}  com.todoist:id/empty_title
${SETTINGS_CONTENT_DESK}  //android.view.View[@content-desc='${SETTINGS_TEXT}']
${NOTIFICATION_START_SCROLL_XPATH}  //android.widget.TextView[@text='${NOTIFICATIONS_TEXT}']
${GENERAL_END_SCROLL_XPATH}  //android.widget.TextView[@text='${GENERAL_TEXT}']
${LOGOUT_POPUP_CONFIRMATION_ID}  android:id/message
${LOGOUT_POPUP_YES_ID}  android:id/button1
${LOGOUT_POPUP_NO_ID}  android:id/button2