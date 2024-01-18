*** Settings ***
Documentation  String file

*** Variables ***
${GOOGLE_BUTTON_TEXT}  Continue with Google
${FACEBOOK_BUTTON_TEXT}  Continue with Facebook
${TODOIST_MENU_TEXT}  What do you need to get done today?
${LOGIN_EMAIL_CONFIRMATION_TEXT}  Fes servir oriol
${BROWSE_TEXT}  Browse
${USERNAME_TEXT}  Oriol
${SETTINGS_TEXT}  Settings
${MY_PROJECTS_TEXT}  My Projects
${NOTIFICATIONS_TEXT}  Notifications
${GENERAL_TEXT}  General
${EMAIL_TEXT}  iverpierce@gmail.com
${LOGOUT_POPUP_CONFIRMATION_TEXT}  Are you sure you want to log out?
${YES_TEXT}  YES
${NO_TEXT}  NO
${TIMEOUT}  60
@{MENU_TABS}=  Today  Inbox  Search  Browse
@{SETTINGS_TABS}=  Upgrade to Pro  Account  ${GENERAL_TEXT}  Theme  App icon  Navigation bar  Navigation menu  Quick Add  Productivity  Reminders  ${NOTIFICATIONS_TEXT}  Support  About  What's new  Log out
${APP_ID}  com.todoist
