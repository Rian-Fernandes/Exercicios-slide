*** Settings ***


*** Variables ***
${numero1}    10
${numero2}    5
${operacao}    +

*** Test Cases ***
Calcular Operação
    ${resultado}    Calcular    ${numero1}    ${numero2}    ${operacao}

    Log To Console    \nNúmero 1: ${numero1}
    Log To Console    Número 2: ${numero2}
    Log To Console    Operação: ${operacao}
    Log To Console    Resultado: ${resultado}

*** Keywords ***
Calcular
    [Arguments]    ${numero1}    ${numero2}    ${operacao}
    ${resultado}    Run Keyword If    '${operacao}' == '+'    Set Variable    ${numero1 + numero2}
    ...            ELSE IF    '${operacao}' == '-'    Set Variable    ${numero1 - numero2}
    ...            ELSE IF    '${operacao}' == '*'    Set Variable    ${numero1 * numero2}
    ...            ELSE IF    '${operacao}' == '/'    Set Variable    ${numero1 / numero2}
    ...            ELSE    Set Variable    Operação Inválida

    [Return]    ${resultado}
