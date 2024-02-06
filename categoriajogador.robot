*** Settings ***

*** Variables ***
${jogador_nome}
${jogador_idade}
${categoria}

*** Test Cases ***
DeterminarCategoriaJogador - Profissional
    Set Jogador    João    30
    ${categoria}    Determinar Categoria    ${jogador_idade}

    Log To Console    \nNome: ${jogador_nome}
    Log To Console    Idade: ${jogador_idade}
    Log To Console    Categoria: ${categoria}

*** Keywords ***
Set Jogador
    [Arguments]    ${nome}    ${idade}
    Set Test Variable    ${jogador_nome}    ${nome}
    Set Test Variable    ${jogador_idade}    ${idade}

Determinar Categoria
    [Arguments]    ${idade}
    ${categoria}    Run Keyword If    10 <= ${idade} <= 17    Set Test Variable    ${categoria}    Categorias de base
    ...            ELSE IF    18 <= ${idade} <= 40    Set Test Variable    ${categoria}    Profissional
    ...            ELSE IF    ${idade} > 40    Set Test Variable    ${categoria}    Master
    ...            ELSE    Set Test Variable    ${categoria}    Escolinha

    [Return]    ${categoria}
