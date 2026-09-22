*** Settings ***
Resource    ../resources/keywords.robot
Test Setup        Open Login Page
Suite Teardown    Close Test Browser

*** Test Cases ***
Cart Verification
    [Tags]    regression    cart
    Login With Valid Credentials
    Select Product
    Verify Product Is Added To Cart
    Open Cart
    Verify Product In Cart