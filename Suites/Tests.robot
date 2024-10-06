*** Settings***
Library     SeleniumLibrary


*** Variables ***
${Browser}      chrome
${APP_URL}       https://practicetestautomation.com/practice-test-login/
${UN}        id=username 
${PWD}        id=password
${LOGIN_BTN}        id=submit


*** Keywords ***


*** Test cases ***
Log The testcase
    [Tags]      test
    Open Browser    http://www.google.com       ${Browser}
    Maximize Browser Window
    go to   ${APP_URL}
    Input Text     ${UN}  student
    Input Text     ${PWD}    Password123
    Click Element     ${LOGIN_BTN}