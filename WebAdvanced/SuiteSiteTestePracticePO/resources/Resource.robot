*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}      headlesschrome
${URL}          http://automationpractice.com

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser        about:blank   ${BROWSER}

Fechar navegador
    Close Browser


### Rodando testes headless (sem abrir webdriver)
### robot -d ./results -v BROWSER:headlesschrome SuiteSiteTestePracticePO\tests\TestSitePractice.robot
