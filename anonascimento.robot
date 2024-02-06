*** Settings ***


*** Variables ***
${ano_nascimento}    1998
${ano_futuro}        2035

*** Test Cases ***
Calcular Idade em 2035
    ${diferenca}    Evaluate    ${ano_futuro} - ${ano_nascimento}
    Log To Console    \nAno de Nascimento: ${ano_nascimento}
    Log To Console    Ano Futuro: ${ano_futuro}
    Log To Console    Diferença: ${diferenca}
    Log To Console    Sua idade em 2035 será: ${diferenca}
