*** Settings ***
Resource    ../resources/keywords.robot
Test Setup        Open Login Page
Suite Teardown    Close Test Browser

*** Test Cases ***
Product Selection
    [Tags]    regression    product
    Login With Valid Credentials
    Select Product
    Verify Product Is Added To Cart