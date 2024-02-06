*** Settings ***


*** Variables ***
${dividendo}    25
${divisor}      4

*** Test Cases ***
Calcular e Imprimir Dividendo, Divisor, Quociente e Resto
    ${quociente}    Set Variable    ${dividendo} // ${divisor}
    ${resto}        Set Variable    ${dividendo} % ${divisor}

    Log To Console    \nDividendo: ${dividendo}
    Log To Console    Divisor: ${divisor}
    Log To Console    Quociente: ${quociente}
    Log To Console    Resto: ${resto}


   