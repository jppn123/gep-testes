*** Settings ***
Resource    ../../keywords/keywords-front/homepage.robot

*** Test Cases ***
cenário 1: Limpeza dos datagrids e ir para a homepage
    verificar se está na homepage
    resetar datagrid maquina
    resetar datagrid Salas
    resetar datagrid users
    ir para a homepage

cenário 2: Fazer o teste do crud Salas
    clicar em Salas e testar o crud
    
cenário 3: Fazer o teste do crud Computadores
    clicar em Computadores e testar o crud

cenário 4: Tentar apagar sala com maquina
    testar se é possivel apagar sala com computadores

cenário 5: Fazer o teste do crud Participantes do projeto
    clicar em Participantes do projeto e testar o crud