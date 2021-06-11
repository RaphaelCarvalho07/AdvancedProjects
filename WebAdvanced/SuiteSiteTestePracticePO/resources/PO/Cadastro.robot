***Settings***
Library     SeleniumLibrary
Library     String

***Variables***
${CADASTRO_BTN_SIGNIN}              xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]
${CADASTRO_TITLE}                   Login - My Store
${CADASTRO_BTN_EMAIL}               id=email_create
${CADASTRO_BTN_CREATE}              id=SubmitCreate
${CADASTRO_MSG_REQUIRED_FIELDS}     xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
&{CADASTRO_REQUIRED_FIELDS}         gender=id_gender1
...                                 name=customer_firstname
...                                 lastName=customer_lastname
...                                 password=passwd
...                                 address=address1
...                                 city=city
...                                 state=id_state
...                                 zipCode=postcode
...                                 phone=phone_mobile

***Keywords***

#### Ações
Clicar em "Sign in"
    Click Element                       ${CADASTRO_BTN_SIGNIN}

Informar um e-mail válido
    Title Should Be                     ${CADASTRO_TITLE}
    Wait Until Element Is Visible       ${CADASTRO_BTN_EMAIL}
    ${EMAIL}                            Generate Random String
    Input Text                          ${CADASTRO_BTN_EMAIL}                       ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${CADASTRO_BTN_CREATE}

Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${CADASTRO_MSG_REQUIRED_FIELDS}
    Click Element                   ${CADASTRO_REQUIRED_FIELDS.gender}
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.name}                Rapha
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.lastName}            Carvalho
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.password}            123456
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.address}             Rua Framework, Bairro Robot
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.city}                Rio de Janeiro
    Set Focus To Element            ${CADASTRO_REQUIRED_FIELDS.state}                
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible        ${CADASTRO_REQUIRED_FIELDS.state}
    Select From List By Index       ${CADASTRO_REQUIRED_FIELDS.state}               32
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.zipCode}             12345
    Input Text                      ${CADASTRO_REQUIRED_FIELDS.phone}               99988877

Submeter cadastro
    Click Button    submitAccount

#### Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p
    Element Text Should Be           xpath=//*[@id="center_column"]/p
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           xpath=//*[@id="header"]/div[2]//div[1]/a/span    Rapha Carvalho
