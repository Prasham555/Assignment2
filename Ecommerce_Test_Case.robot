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
    Add product1 to cart
    Close Notification    
    Add product2 to cart
    Close Notification
    Navigate to cart
    Capture Page Screenshot    Cart-value.png
    