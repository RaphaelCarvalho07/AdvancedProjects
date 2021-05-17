*** Test Cases ***

Teste FOR com numeração da listas
    For com numeração

*** Keywords ***
For com numeração
    FOR    ${index}   ${item}   IN ENUMERATE    P   M   G  GG  XG  XXG
        Log    Item da lista: ${item} - Posição do item da lista: ${index}
    END
