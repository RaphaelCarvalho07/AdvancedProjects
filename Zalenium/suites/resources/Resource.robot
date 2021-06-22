*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser   about:blank   ${BROWSER}   remote_url=http://192.168.15.7:4444/wd/hub
    Maximize Browser Window

Fechar navegador
    Close Browser
