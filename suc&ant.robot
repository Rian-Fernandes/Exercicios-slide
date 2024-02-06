*** Settings ***


*** Variables ***
${numero}    10

*** Test Cases ***
Exibir Sucessor e Antecessor
    ${sucessor}    Evaluate    ${numero} + 1
    ${antecessor}    Evaluate    ${numero} - 1

    Log To Console    \nNúmero: ${numero}
    Log To Console    Sucessor: ${sucessor}
    Log To Console    Antecessor: ${antecessor}

