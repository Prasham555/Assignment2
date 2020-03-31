*** Settings ***
Library     Selenium2Library

Resource    ../ObjectRepository/EcommerceObjects.robot
Resource    ../Test Data/EcommerceData.robot

*** Keywords ***
Start Browser and Maximize
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

Login into Demo Webshop
    Click Element               ${HOME_LOGIN}
    Input Text                  ${USERNAME_TEXTBOX}    ${USERNAME}
    Input Password              ${PASSWORD_TEXTBOX}    ${PASSWORD}
    Click Button                ${LOGIN}
    Wait Until Page contains    ${LOGOUT_TEXT}

Logout and Close the Browser
    Page Should Contain    ${LOGOUT_TEXT}
    Click Element          ${LOGOUT_BUTTON}
    Close Browser

Select Books Category
    Click Element    ${BOOKS}

Sort the Category
    Select From List By Label    ${CATEGORY_DROPDOWN}    ${CATEGORY_DROPDOWN_VALUE}

Add Top Two Pruducts to the Cart
    :FOR    ${i}    IN RANGE    0    ${MAX}
    \    @{product}    Get WebElements    ${PRODUCTS}
    \    Click Element    @{product}[${i}]    
    \    Close Notification    

Navigate to cart
    Mouse Over       ${SHOPPING_CART}
    Click Element    ${SHOPPING_CART}
       
Close Notification
    Wait Until Element Is Visible    ${CLOSE_NOTIFICATION}
    Click Element                    ${CLOSE_NOTIFICATION}