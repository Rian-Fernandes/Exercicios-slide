*** Settings ***


*** Variables ***
${tempo_em_segundos}    8678

*** Test Cases ***
Converter Tempo para Formato HH:MM:SS
    ${tempo_formatado}    Convert Tempo    ${tempo_em_segundos}

    Log To Console    \nTempo em Segundos: ${tempo_em_segundos}
    Log To Console    Tempo Formatado: ${tempo_formatado}

*** Keywords ***
Convert Tempo
    [Arguments]    ${tempo_em_segundos}
    ${horas}       ${resto}    Evaluate    divmod(${tempo_em_segundos}, 3600)
    ${minutos}     ${segundos}    Evaluate    divmod(${resto}, 60)

    ${horas}       Convert To String    ${horas}
    ${minutos}     Convert To String    ${minutos}
    ${segundos}    Convert To String    ${segundos}

    ${horas}       Run Keyword If    '${horas}' == '0'        Set Variable    00    ELSE    Set Variable    ${horas}
    ${minutos}     Run Keyword If    '${minutos}' == '0'      Set Variable    00    ELSE    Set Variable    ${minutos}
    ${segundos}    Run Keyword If    '${segundos}' == '0'     Set Variable    00    ELSE    Set Variable    ${segundos}

    [Return]    ${horas}:${minutos}:${segundos}
