*** Settings***
Library     SeleniumLibrary
Library    Dialogs
Test Setup    Headless Chrome - Create Webdriver
Test Teardown    Close Browser

*** Variables ***
${Browser}      chrome
${APP_URL}       http://practicetestautomation.com/practice-test-login/
${UN}        id=username 
${PWD}        id=password
${LOGIN_BTN}        id=submit
${HUB_URL}    http://20.244.105.116:4444/wd/hub    #http://localhost:4444/grid/console 
${CHROMEDRIVER_PATH}    C://Users//Mahith//Desktop//Honeybee//chromedriver.exe


*** Keywords ***
Headless Chrome - Create Webdriver
    ${browser_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${browser_options}   add_argument    disable-gpu
    ${options}=     Call Method     ${browser_options}    to_capabilities      
    Create Webdriver    Remote   command_executor=http://20.40.54.44:4444/wd/hub    desired_capabilities=${options}
    Go to     http://Google.com
    Maximize Browser Window
    Capture Page Screenshot



*** Test cases ***
TC01
    [Tags]      test1
    # Open Browser    ${APP_URL}     ${Browser}
    go to   ${APP_URL}
    Sleep     2s
    Input Text     ${UN}  student
    Sleep    2s
    Input Text     ${PWD}    Password123 
    Sleep    2s
    Click Element     ${LOGIN_BTN}

TC02
    [Tags]      test2
    # Open Browser    ${APP_URL}     ${Browser}
    go to   ${APP_URL}
    Sleep     2s
    Input Text     ${UN}  student
    Sleep    2s
    Input Text     ${PWD}    Password1
    Sleep    2s
    Click Element     ${LOGIN_BTN}

TC03
    [Tags]      test3
    # Open Browser    ${APP_URL}     ${Browser}
    go to   ${APP_URL}
    Sleep     2s
    Input Text     ${UN}  student
    Sleep    2s
    Input Text     ${PWD}    Password123 
    Sleep    2s
    Click Element     ${LOGIN_BTN}
    
