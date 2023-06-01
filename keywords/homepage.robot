*** Settings ***
Variables     ../variables/homepage.py
#no final já terei todos os abaixo
Resource    roomspage.robot
Resource    machinespage.robot
Resource    userpage.robot

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
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${xpath_do_texto}
    Run Keyword If    ${element_exists}     Element Should Contain    ${xpath_do_texto}    ${mensagem}
verificar se está na homepage    
    Wait Until Location Is    ${HOME_PAGE_URL}    10s
    Location Should Be    ${HOME_PAGE_URL}

clicar em Salas e testar o crud
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    testa room page

    apagar tabela    ${ROOM_TABLE_NOME}    apagar sala
    fechar toast    ${ROOM_CLOSE_TOAST}
    apagar tabela    ${ROOM_TABLE_NOME}    apagar sala
    fechar toast    ${ROOM_CLOSE_TOAST}

    adicionar sala    LATIM    ${ROOM_SIGLA_SALA_LAT}     Sala latim
    adicionar baia 1    ${ROOM_SIGLA_ESPACO_ESPACO1}    E1    primeiro espaço localizado na sala latim
    adicionar baia 2    ${ROOM_SIGLA_ESPACO_ESPACO2}    E2    segundo espaço localizado na sala latim
    testa botão apagar baia
    salvar sala
    fechar toast    ${ROOM_CLOSE_TOAST}
    adicionar sala    LASIC    LAS    Sala lasic
    salvar sala
    fechar toast    ${ROOM_CLOSE_TOAST}
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    testa editar sala    LATIM    ${ROOM_SIGLA_SALA_LAT}     Sala latim
    testa pesquisar sala
    editar sala
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}


clicar em Computadores e testar o crud
    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    testa machine page

    apagar tabela    ${MACHINE_TABLE_MAQUINA}    apagar maquina
    fechar toast    ${MACHINE_CLOSE_TOAST}
    apagar tabela    ${MACHINE_TABLE_MAQUINA}    apagar maquina
    fechar toast    ${MACHINE_CLOSE_TOAST}

    adicionar maquina    maquina1    1234    maquina1 da sala latim espaço 1    ${MACHINE_ADD_SALA_SELECTOR1}    ${MACHINE_ADD_ESPACO_SELECTOR1}
    fechar toast    ${MACHINE_CLOSE_TOAST}

    adicionar maquina    maquina2    4321    maquina2 da sala latim espaço 2    ${MACHINE_ADD_SALA_SELECTOR1}    ${MACHINE_ADD_ESPACO_SELECTOR2}
    fechar toast    ${MACHINE_CLOSE_TOAST}

    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    
    testa pesquisar maquina
    testa editar maquina    maquina2    4321    maquina2 da sala latim espaço 2    ${ROOM_SIGLA_SALA_LAT}    ${ROOM_SIGLA_ESPACO_ESPACO2}


testar se é possivel apagar sala com computadores
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    apagar tabela    ${ROOM_TABLE_NOME}    apagar sala
    conteudo do toast    ${ROOM_TRY_REMOVE_TOAST_TEXT}    Erro

clicar em Participantes do projeto e testar o crud
    resetar pagina    ${USER_BUTTON}    ${USER_PAGE_URL}    ${USER_ADD_BUTTON}
    testa user page

    adicionar usuario    Jao    jao@gmail.com    12345678998765    85912345678
    fechar toast    ${MACHINE_CLOSE_TOAST}

resetar datagrid maquina
    resetar pagina    ${MACHINE_BUTTON}    ${MACHINE_PAGE_URL}    ${MACHINE_ADD_BUTTON}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${MACHINE_TABLE_MAQUINA}
    WHILE    ${element_exists} == $True
        apagar tabela    ${MACHINE_TABLE_MAQUINA}    apagar maquina
        Sleep    0.2s
        fechar toast    ${MACHINE_CLOSE_TOAST}
        ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${MACHINE_TABLE_MAQUINA}
    END

resetar datagrid Salas
    resetar pagina    ${SALAS_BUTTON}    ${ROOM_PAGE_URL}    ${ROOM_ADD_BUTTON}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${ROOM_TABLE_NOME}
    WHILE    ${element_exists} == $True
        apagar tabela    ${ROOM_TABLE_NOME}    apagar sala
        Sleep    0.2s
        fechar toast    ${MACHINE_CLOSE_TOAST}
        ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${ROOM_TABLE_NOME}
    END

resetar datagrid users
    resetar pagina    ${USER_BUTTON}    ${USER_PAGE_URL}    ${USER_ADD_BUTTON}
    ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${USER_TABLE_NOME1}
    WHILE    ${element_exists} == $True
        apagar tabela    ${USER_TABLE_NOME1}    apagar user
        Sleep    0.2s
        fechar toast    ${MACHINE_CLOSE_TOAST}
        ${element_exists} =    Run Keyword And Return Status    Page Should Contain Element    ${USER_TABLE_NOME1}
    END

ir para a homepage
    Go To    ${HOME_PAGE_URL}
    Wait Until Location Is    ${HOME_PAGE_URL}