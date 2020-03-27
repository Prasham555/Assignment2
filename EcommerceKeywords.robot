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
    Input Text                  ${PASSWORD_TEXTBOX}    ${PASSWORD}
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

Add product1 to cart
    Click Element    ${PRODUCT1}

Add product2 to cart
    Click Element    ${PRODUCT2}

Navigate to cart
    Mouse Over       ${SHOPPING_CART}
    Click Element    ${SHOPPING_CART}
       
Close Notification
    Wait Until Element Is Visible    ${CLOSE_NOTIFICATION}
    Click Element                    ${CLOSE_NOTIFICATION}
