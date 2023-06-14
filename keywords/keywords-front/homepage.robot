*** Settings ***
Variables     ../../variables/variables-front/homepage.py

Resource    roomspage.robot
Resource    machinespage.robot
Resource    userpage.robot
Resource    projectspage.robot

*** Keywords ***
resetar pagina
    [Arguments]    ${botao_sala}    ${url_da_pagina}    ${elemento_a_esperar}
    Go To    ${HOME_PAGE_URL}
    Click Element    ${botao_sala}
    Wait Until Location Is    ${url_da_pagina}
    Wait Until Element Is Visible    ${elemento_a_esperar}

apagar tabela
    [Arguments]    ${contem_esse_nome}    ${keyword}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${contem_esse_nome}
    Run Keyword If    ${element_exists}    ${keyword}

fechar toast
    [Arguments]    ${botao_fechar}    
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${botao_fechar}
    Run Keyword If    ${element_exists}     Click Element    ${botao_fechar}
conteudo do toast
    [Arguments]    ${xpath_do_texto}    ${mensagem}
    Wait Until Element Is Visible    ${xpath_do_texto}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${xpath_do_texto}
    Run Keyword If    ${element_exists}     Element Should Contain    ${xpath_do_texto}    ${mensagem}
resetar datagrid
    [Arguments]    ${elemento_da_tabela}    ${função_de_apagar_datagrid}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${elemento_da_tabela}
    WHILE    ${element_exists} == $True
        apagar tabela    ${elemento_da_tabela}    ${função_de_apagar_datagrid}
        Sleep    0.2s
        fechar toast    ${MACHINE_CLOSE_TOAST}
        ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${elemento_da_tabela}
    END
verificar se está na homepage    
    Wait Until Location Is    ${HOME_PAGE_URL}    10s
    Location Should Be    ${HOME_PAGE_URL}

clicar em Salas e testar o crud
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    testa room page

    adicionar sala    ${ROOM_NOME_SALA_LATIM}    ${ROOM_SIGLA_SALA_LATIM}     ${ROOM_DESC_SALA_LATIM}
    adicionar baia 1    ${ROOM_SIGLA_ESPACO_ESPACO1}    E1    primeiro espaço localizado na sala latim
    adicionar baia 2    ${ROOM_SIGLA_ESPACO_ESPACO2}    E2    segundo espaço localizado na sala latim
    testa botão apagar baia
    salvar sala
    fechar toast    ${ROOM_CLOSE_TOAST}
    adicionar sala    ${ROOM_NOME_SALA_LASIC}    ${ROOM_SIGLA_SALA_LASIC}    ${ROOM_DESC_SALA_LASIC}
    salvar sala
    fechar toast    ${ROOM_CLOSE_TOAST}
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    testa editar sala    ${ROOM_NOME_SALA_LATIM}    ${ROOM_SIGLA_SALA_LATIM}     ${ROOM_DESC_SALA_LATIM}
    testa pesquisar sala
    editar sala
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}


clicar em Computadores e testar o crud
    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    testa machine page

    adicionar maquina    maquina1    1234    maquina1 da sala latim espaço 1    ${MACHINE_ADD_SALA_SELECTOR1}    ${MACHINE_ADD_ESPACO_SELECTOR1}
    fechar toast    ${MACHINE_CLOSE_TOAST}

    adicionar maquina    maquina2    4321    maquina2 da sala latim espaço 2    ${MACHINE_ADD_SALA_SELECTOR1}    ${MACHINE_ADD_ESPACO_SELECTOR2}
    fechar toast    ${MACHINE_CLOSE_TOAST}

    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    
    testa pesquisar maquina
    testa editar maquina    maquina2    4321    maquina2 da sala latim espaço 2    ${ROOM_SIGLA_SALA_LATIM}    ${ROOM_SIGLA_ESPACO_ESPACO2}


testar se é possivel apagar sala com computadores
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    apagar tabela    ${ROOM_TABLE_NOME}    apagar sala
    conteudo do toast    ${ROOM_TRY_REMOVE_TOAST}    ${ROOM_TRY_REMOVE_TOAST_TEXT}
    testar se é possível apagar baia com computador


clicar em Participantes do projeto e testar o crud
    resetar pagina    ${USER_BUTTON}    ${USER_PAGE_URL}    ${USER_ADD_BUTTON}
    testa user page

    adicionar usuario    Jao    jao@gmail.com    12345678998765    85912345678
    fechar toast    ${MACHINE_CLOSE_TOAST}
    resetar pagina    ${USER_BUTTON}    ${USER_PAGE_URL}    ${USER_ADD_BUTTON}
    testa pesquisar user
    testa editar user

resetar datagrid maquina
    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    resetar datagrid    ${MACHINE_TABLE_MAQUINA}    apagar maquina
   

resetar datagrid Salas
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    resetar datagrid    ${ROOM_TABLE_NOME}    apagar sala
    
resetar datagrid users
    resetar pagina    ${USER_BUTTON}    ${USER_PAGE_URL}    ${USER_ADD_BUTTON}
    resetar datagrid    ${USER_TABLE_NOME1}    apagar user
    
resetar datagrid projetos
    resetar pagina    ${PROJETO_BUTTON}    ${PROJECTS_PAGE_URL}    ${PROJECTS_ADD_BUTTON}
    resetar datagrid    ${PROJECTS_TABLE_NOME}    apagar projeto

ir para a homepage
    Go To    ${HOME_PAGE_URL}
    Wait Until Location Is    ${HOME_PAGE_URL}
