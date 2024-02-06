*** Settings ***


*** Variables ***
${largura}             10
${comprimento}         20
${preco_metro_quadrado}     25.5

*** Test Cases ***
Calcular Área e Preço do Terreno
    ${area}    Set Variable    ${largura} * ${comprimento}
    ${preco}   Set Variable    ${area} * ${preco_metro_quadrado}

    Log To Console    \nLargura do Terreno: ${largura}
    Log To Console    Comprimento do Terreno: ${comprimento}
    Log To Console    Área do Terreno: ${area}
    Log To Console    Preço do Metro Quadrado: ${preco_metro_quadrado}
    Log To Console    Preço do Terreno: ${preco}
