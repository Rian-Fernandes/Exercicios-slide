*** Settings ***


*** Variables ***
${numero}    -5

*** Test Cases ***
Verificar Sinal do Número
    ${resposta}    Determinar Sinal    ${numero}

    Log To Console    \nNúmero: ${numero}
    Log To Console    Resposta: ${resposta}

*** Keywords ***
Determinar Sinal
    [Arguments]    ${numero}
    ${resposta}    Run Keyword If    ${numero} > 0    Set Variable    Positivo
    ...            ELSE IF    ${numero} < 0    Set Variable    Negativo
    ...            ELSE    Set Variable    Zero

    [Return]     From Keyword    ${resposta}
