*** Settings ***
Resource    ../../keywords/keywords-back/homepage.robot
Resource    ../../keywords/keywords-back/getCookie.robot
Resource    ../../keywords/keywords-back/roomsRequests.robot

*** Test Cases ***
cenário 1: Abrir o site do GEP e fazer login
    abrir navegador no site
    fazer login pelo google
    
cenário 2: Pegar o cookie de login do usuário
    verificar se está na homepage
    pegar cookie authorization
    Close Browser
    iniciar sessão com o header
cenário 3: Room tests
    # GetAllRooms method
    GetRoomById method    1
    # Post method
    # DeleteById method    12
    