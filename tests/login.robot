*** Settings ***
Resource    ../resources/keywords.robot
Test Setup        Open Login Page
Suite Teardown    Close Test Browser

*** Test Cases ***
Valid Login
    [Tags]    smoke    login
    Login With Valid Credentials
    Verify Products Page Is Displayed
 
Invalid Login
    [Tags]    regression    login
    Login With Invalid Credentials