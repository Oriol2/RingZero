*** Settings ***
Documentation  ToDoist Android Login-logout tests
Resource  ../resources/resource.robot
Resource  ../resources/android_locator.robot
Suite Teardown  Close Application

*** Test Cases ***
I Login in Application
  [Documentation]  Open todoist App. Verify elements and login using google personal email
  Open Android Test App
  Wait Until Element Is Visible  ${TODOIST_LOGO_ID}  timeout=${TIMEOUT}
  Element Text Should Be  ${GOOGLE_BUTTON_ID}  ${GOOGLE_BUTTON_TEXT}
  Element Text Should Be  ${FACEBOOK_BUTTON_ID}  ${FACEBOOK_BUTTON_TEXT}
  Click Element  ${GOOGLE_BUTTON_ID}
  Wait until page contains element  ${GOOGLE_CONTINUE_BUTTON_ID}  timeout=${TIMEOUT}
  Element Text Should Be  ${GOOGLE_CONTINUE_BUTTON_ID}  ${LOGIN_EMAIL_CONFIRMATION_TEXT}
  Click Element  ${GOOGLE_CONTINUE_BUTTON_ID}

I Click on Browse button
  [Documentation]  Enter todoist menu and loop the available tabs making sure all of them are displayed. Click on Browse tab
  Wait Until Page Contains  ${TODOIST_MENU_TEXT}  timeout=${TIMEOUT}
  Element Text Should Be  ${TODOIST_MENU_ID}  ${TODOIST_MENU_TEXT}
  FOR  ${tab}  IN  @{MENU_TABS}
    Page Should Contain Text  ${tab}
  END
  Click Text  ${BROWSE_TEXT}
  Wait Until Page Contains  ${USERNAME_TEXT}  timeout=${TIMEOUT}
  Page Should Contain Text  ${MY_PROJECTS_TEXT}

I logout from Application
  [Documentation]  Loop the Seetings values making sure all of them are displayed. Confirm logout app
  Click Element  ${SETTINGS_CONTENT_DESK}
  Wait Until Page Contains  ${SETTINGS_TEXT}  timeout=${TIMEOUT}
  FOR  ${tab}  IN  @{SETTINGS_TABS}
    Run Keyword If  "${tab}" == "${NOTIFICATIONS_TEXT}"  Scroll  ${NOTIFICATION_START_SCROLL_XPATH}  ${GENERAL_END_SCROLL_XPATH}
  Page Should Contain Text  ${tab}
  END
  Click Text  ${EMAIL_TEXT}
  Wait Until Page Contains  ${LOGOUT_POPUP_CONFIRMATION_TEXT}  timeout=${TIMEOUT}
  Element Text Should Be  ${LOGOUT_POPUP_CONFIRMATION_ID}  ${LOGOUT_POPUP_CONFIRMATION_TEXT}
  Element Text Should Be  ${LOGOUT_POPUP_YES_ID}  ${YES_TEXT}
  Element Text Should Be  ${LOGOUT_POPUP_NO_ID}  ${NO_TEXT}
  Click Element  ${LOGOUT_POPUP_YES_ID}
  Wait Until Element Is Visible  ${TODOIST_LOGO_ID}  timeout=${TIMEOUT}

I remove Application from my Phone
  [Documentation]  Remove app from the phone
  Remove Application  ${APP_ID}
