*** Settings ***


*** Variables ***
${user_nome}
${user_idade}
${user_condicao}

*** Test Cases ***
DeterminarTipoFila - Usuário Preferencial
    Set User    Maria    70    deficiente
    ${tipo_fila}    Determinar Tipo de Fila    ${user_idade}    ${user_condicao}

    Log To Console    \nNome: ${user_nome}
    Log To Console    Idade: ${user_idade}
    Log To Console    Condição: ${user_condicao}
    Log To Console    Tipo de Fila: ${tipo_fila}

*** Keywords ***
Set User
    [Arguments]    ${nome}    ${idade}    ${condicao}
    Set Test Variable    ${user_nome}    ${nome}
    Set Test Variable    ${user_idade}    ${idade}
    Set Test Variable    ${user_condicao}    ${condicao}

Determinar Tipo de Fila
    [Arguments]    ${idade}    ${condicao}
    ${user_nome}    Set Variable    Maria
    ${user_idade}    Set Variable    70
    ${user_condicao}    Set Variable    deficiente

    ${tipo_fila}    Run Keyword If    ${user_idade} > 65 or '${user_condicao}' == 'deficiente' or '${user_condicao}' == 'gestante'    Set Variable    Fila preferencial    ELSE    Set Variable    Fila comum

    [Return]    ${tipo_fila}
