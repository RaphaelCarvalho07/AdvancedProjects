*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser   about:blank   ${BROWSER}   remote_url=http://172.27.16.1:4444/wd/hub
    Maximize Browser Window

Fechar navegador
    Close Browser
