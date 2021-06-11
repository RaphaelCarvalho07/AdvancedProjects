*** Settings ***
Library    SeleniumLibrary

***Variables***
${ORDER_TITLE}      Order - My Store
${ORDER_DELETE}     xpath=//*[@class="cart_quantity_delete"]
${ORDER_MSG}        xpath=//*[@id="center_column"]/p[@class='alert alert-warning']

***Keywords***
Excluir o produto do carrinho
    Title Should Be                     ${ORDER_TITLE}
    Wait Until Element Is Visible       ${ORDER_DELETE}    
    Click Element                       ${ORDER_DELETE}

#### Conferências
Conferir se o carrinho fica vazio
    Wait Until Element Is Visible       ${ORDER_MSG}
    Element Text Should Be              ${ORDER_MSG}        Your shopping cart is empty.