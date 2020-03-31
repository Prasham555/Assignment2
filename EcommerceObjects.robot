*** Variables ***
#Locators

${HOME_LOGIN}                 //a[@class='ico-login']
${LOGIN}                      //input[@value='Log in']
${USERNAME_TEXTBOX}           name:Email
${PASSWORD_TEXTBOX}           //input[@name='Password']
${BOOKS}                      //a[@href='/books']
${LOGOUT_BUTTON}              //a[@class='ico-logout']
${LOGOUT_TEXT}                Log out
${CATEGORY_DROPDOWN}          name:products-orderby
${CATEGORY_DROPDOWN_VALUE}    Price: High to Low
${PRODUCTS}                   //input[@value='Add to cart']
${SHOPPING_CART}              (//li[contains(@id,'topcartlink')])
${CLOSE_NOTIFICATION}         //span[@title='Close']
${CART_QUANTITY}              //span[@class='cart-qty']