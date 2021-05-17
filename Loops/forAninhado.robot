*** Test Cases ***
Teste de FOR aninhado
    Cria cadastro de produto (FOR aninhado)


*** Keywords ***
### FOR DENTRO DE FOR (Loop aninhado)
### Não é possível fazer aninhamentos diretamente
### O recomendado é criar outra Keyword que chama a outra no laço
Cria cadastro de produto (FOR aninhado)
    FOR    ${produto}   IN      baby look   camiseta    blusa
        Imprime tamanhos para o produto     ${produto}
    END

Imprime tamanhos para o produto
    [Arguments]  ${produto}
    FOR   ${tamanho}    IN    P    M   G
        Log    Produto: ${produto} - Tam: ${tamanho}
    END    
