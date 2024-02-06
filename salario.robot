*** Settings ***


*** Variables ***
${valor_hora_normal}    10.00
${valor_hora_extra}     15.00
${horas_normais}        200  
${horas_extras}         70

*** Test Cases ***
Calcular Salário Anual
    ${salario_normais}    Evaluate    ${valor_hora_normal} * ${horas_normais}
    ${salario_extras}     Evaluate    ${valor_hora_extra} * ${horas_extras}
    ${salario_anual}      Evaluate    ${salario_normais} + ${salario_extras}

    Log To Console    \nHoras Normais: ${horas_normais}
    Log To Console    Horas Extras: ${horas_extras}
    Log To Console    Salário Anual: ${salario_anual}
