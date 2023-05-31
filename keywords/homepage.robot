*** Settings ***
Library        SeleniumLibrary
Variables     ../variables/homepage.py
Variables    ../variables/rooms/rooms-datagrid.py
    
*** Keywords ***
verificar se está na homepage    
    Wait Until Location Is    ${HOME_PAGE_URL}    10s
    Location Should Be    ${HOME_PAGE_URL}

clicar em Salas    
    Click Element    ${SALAS_BUTTON}
    Location Should Be    ${ROOM_PAGE_URL}
    Wait Until Element Is Visible    ${ROOM_ADD_BUTTON}

