*** Settings ***
Resource    ../resources/keywords.robot
Test Setup        Open Login Page
Suite Teardown    Close Test Browser

*** Test Cases ***
Checkout
    [Tags]    regression    checkout
    Login With Valid Credentials
    Select Product
    Verify Product Is Added To Cart
    Open Cart
    Verify Product In Cart
    Proceed To Checkout
    Enter Checkout Information
    Continue To Overview
    Place Order