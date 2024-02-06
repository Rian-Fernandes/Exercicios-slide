*** Settings ***


*** Variables ***
${VARIAVEL1}    120
${VARIAVEL2}    137

*** Test Cases ***
Soma de Variáveis
    ${RESULTADO}    Evaluate    ${VARIAVEL1} + ${VARIAVEL2}
    Log To Console    \nResultado da Soma: ${RESULTADO}