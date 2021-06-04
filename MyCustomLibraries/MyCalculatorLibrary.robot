*** Settings ***
Library     ./Libraries/CalculatorLibrary/MyCalculatorLibrary.py

*** Test Cases ***
Retornar a soma de dois valores
    Somar dois valores    1       4

Retornar a diferença de dois valores
    Subtrair o valor "1" com o valor "4"

*** Keywords ***
Somar dois valores
    [Arguments]     ${numero_1}    ${numero_2}
    ${result}    Somar      ${numero_1}     ${numero_2}

Subtrair o valor "${numero_1}" com o valor "${numero_2}"
    ${result}    Subtrair      ${numero_1}     ${numero_2}