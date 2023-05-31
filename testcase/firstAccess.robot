*** Settings ***
Resource    ../keywords/mainpage.robot
Resource    ../keywords/homepage.robot

*** Test Cases ***
cenário 1: Abrir o site do GEP e fazer login
    abrir navegador no site
    fazer login pelo google

cenário 2: Estar na homepage
    verificar se está na homepage

cenário 3: Fazer o teste do crud Salas
    clicar em Salas e testar o crud
    
cenário 4: Fazer o teste do crud Computadores
    clicar em Computadores e testar o crud

cenário 5: Tentar apagar sala com maquina
    testar se é possivel apagar sala com computadores

cenário 6: Fazer o teste do crud Participantes do projeto
    clicar em Participantes do projeto e testar o crud