*** Settings ***


*** Variables ***
${nome_aluno}    Alice
${disciplina}    Matemática
${nota1}         8.5
${nota2}         7.0
${nota3}         9.2
${nota4}         6.8

*** Test Cases ***
Calcular Média das Notas
    ${media}    Evaluate    (${nota1} + ${nota2} + ${nota3} + ${nota4}) / 4

    Log To Console    \nAluno: ${nome_aluno}
    Log To Console    Disciplina: ${disciplina}
    Log To Console    Nota 1: ${nota1}
    Log To Console    Nota 2: ${nota2}
    Log To Console    Nota 3: ${nota3}
    Log To Console    Nota 4: ${nota4}
    Log To Console    Média: ${media}
