*** Settings ***
Library    Browser
Resource   variables.robot

*** Keywords ***
Open Login Page
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Page    ${BASE_URL}
    Wait For Elements State    id=user-name    visible    10s

Login With Valid Credentials
    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click    id=login-button

Login With Invalid Credentials
    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${INVALID_PASSWORD}
    Click    id=login-button
    Wait For Elements State    css=[data-test="error"]    visible    10s

Verify Products Page Is Displayed
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    Products

Select Product
    Click    css=[data-test="add-to-cart-sauce-labs-backpack"]

Verify Product Is Added To Cart
    Wait For Elements State    css=[data-test="shopping-cart-badge"]    visible    10s
    Get Text    css=[data-test="shopping-cart-badge"]    ==    1

Open Cart
    Click    css=.shopping_cart_link

Verify Product In Cart
    Wait For Elements State    css=.inventory_item_name    visible    10s
    Get Text    css=.inventory_item_name    ==    Sauce Labs Backpack

Proceed To Checkout
    Click    id=checkout
    Wait For Elements State    id=first-name    visible    10s

Enter Checkout Information
    Fill Text    id=first-name    Shradha
    Fill Text    id=last-name     Priyadarshini
    Fill Text    id=postal-code   500032

Continue To Overview
    Click    id=continue
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    Checkout: Overview

Place Order
    Click    id=finish
    Wait For Elements State    css=.title    visible    10s
    Get Text    css=.title    ==    Checkout: Complete!


Close Test Browser
    Close Browser