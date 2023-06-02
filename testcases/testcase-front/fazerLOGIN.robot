*** Settings ***
Resource    ../../keywords/keywords-front/mainpage.robot

*** Test Cases ***
cenário 1: Abrir o site do GEP e fazer login
    abrir navegador no site
    fazer login pelo google

