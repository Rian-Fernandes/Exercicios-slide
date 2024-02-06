*** Settings ***


*** Variables ***
${nota1}    8.5
${nota2}    7.0
${nota3}    6.5
${nota4}    9.0

*** Test Cases ***
Calcular Média e Verificar Aprovação
    ${media}    Calcular Média    ${nota1}    ${nota2}    ${nota3}    ${nota4}
    ${resultado}    Run Keyword If    ${media} > 7    Set Variable    Aprovado    ELSE    Set Variable    Reprovado

    Log To Console    \nNota 1: ${nota1}
    Log To Console    Nota 2: ${nota2}
    Log To Console    Nota 3: ${nota3}
    Log To Console    Nota 4: ${nota4}
    Log To Console    Média: ${media}
    Log To Console    Resultado: ${resultado}

*** Keywords ***
Calcular Média
    [Arguments]    ${nota1}    ${nota2}    ${nota3}    ${nota4}
    ${media}    Evaluate    (${nota1} + ${nota2} + ${nota3} + ${nota4}) / 4
    [Return]    ${media}
