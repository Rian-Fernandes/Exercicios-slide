*** Settings ***


*** Variables ***
${distancia_percorrida}   300
${total_combustivel}      40

*** Test Cases ***
Calcular Consumo Médio do Carro
    ${consumo_medio}    Set Variable    ${distancia_percorrida} / ${total_combustivel}

    Log To Console    \nDistância Percorrida: ${distancia_percorrida} km
    Log To Console    Total Gasto de Combustível: ${total_combustivel} litros
    Log To Console    Consumo Médio do Carro: ${consumo_medio} km/l
