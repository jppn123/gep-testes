*** Settings ***
Resource    ../../keywords/keywords-front/mainpage.robot
Resource    ../../keywords/keywords-front/homepage.robot
Resource    ../../keywords//keywords-back/getCookie.robot

*** Test Cases ***
cenário 1: Abrir o site do GEP e fazer login
    abrir navegador no site
    fazer login pelo google
    
cenário 2: Pegar o cookie de login do usuário
    verificar se está na homepage
    pegar cookie authorization
    Close Browser
    iniciar sessão com o header