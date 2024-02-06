*** Settings ***


*** Variables ***
${temperatura_celsius}    37

*** Test Cases ***
Converter Celsius para Fahrenheit
    ${temperatura_fahrenheit}    Evaluate    ${temperatura_celsius} * 1.8 + 32

    Log To Console    \nTemperatura em Celsius: ${temperatura_celsius}
    Log To Console    Temperatura em Fahrenheit: ${temperatura_fahrenheit}
