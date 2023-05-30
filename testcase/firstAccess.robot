*** Settings ***
Resource    ../keywords/mainpage.robot
Resource    ../keywords/homepage.robot

*** Test Cases ***
cenário 1: Abrir o site do GEP, verificar se está no site e fazer login
    abrir navegador no site
    fazer login pelo google

cenário 3: Estar na home da página e clicar em Salas
    verificar se está na homepage


    