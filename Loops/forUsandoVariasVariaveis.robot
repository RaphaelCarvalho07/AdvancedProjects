*** Test Cases ***
Teste FOR usando várias variáveis
    Cria dicionário de traduções

*** Keywords ***

### Usando várias variáveis
Cria dicionário de traduções
    FOR    ${index}    ${english}   ${finnish}    ${português}    IN
    ...        1           cat         kissa          gato
    ...        2           dog         koira          cachorro
    ...        3           horse       hevonen        cavalo
        Log    Animal ${index}:\nEm inglês: ${english}\nEm finlandês: ${finnish}\nEm português: ${português}
    END
