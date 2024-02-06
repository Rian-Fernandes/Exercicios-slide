*** Settings ***


*** Variables ***
${numero1}    5
${numero2}    3

*** Test Cases ***
Encontrar Valor Máximo
    ${maior_numero}    Encontrar Máximo    ${numero1}    ${numero2}

    Log To Console    \nNúmero 1: ${numero1}
    Log To Console    Número 2: ${numero2}
    Log To Console    ${maior_numero}

*** Keywords ***
Encontrar Máximo
    [Arguments]    ${numero1}    ${numero2}
    ${maior_numero}    Run Keyword If    ${numero1} > ${numero2}    Set Variable    O número ${numero1} é maior que o número ${numero2}    ELSE    Set Variable    O número ${numero2} é maior que o número ${numero1}

    [Return]    ${maior_numero}
