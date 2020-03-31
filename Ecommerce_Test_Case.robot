*** Settings ***
Resource         ../Keywords/EcommerceKeywords.robot

Test Setup       Start Browser and Maximize
Test Teardown    Logout and Close the Browser

*** Test Cases ***
Add Two Top Priced Books in Cart
    Login into Demo Webshop
    Select Books Category
    Sort the Category
    Capture Page Screenshot    Product-Sort.png
    Add Top Two Pruducts to the Cart
    Navigate to cart
    Capture Page Screenshot    Cart-value.png
    