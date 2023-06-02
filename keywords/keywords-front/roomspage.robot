*** Settings ***
Library    SeleniumLibrary

Variables    ../../variables/variables-front/rooms/rooms-datagrid.py
Variables    ../../variables/variables-front/rooms/rooms-add.py
Variables    ../../variables/variables-front/rooms/rooms-edit.py
Variables    ../../variables/variables-front/rooms/rooms-delete.py
Variables    ../../variables/variables-front/rooms/rooms-robotvariables.py 

*** Keywords ***
adicionar sala
    [Arguments]    ${nome}    ${sigla}    ${obs}
    Wait Until Element Is Visible    ${ROOM_ADD_BUTTON}
    Click Element   ${ROOM_ADD_BUTTON}
    Wait Until Location Is    ${ROOM_ADD_PAGE_URL}
    Wait Until Element Is Visible    ${ROOM_ADD_INPUT_NAME}
    Input Text    ${ROOM_ADD_INPUT_NAME}    ${nome}
    Input Text    ${ROOM_ADD_INPUT_SIGLA}    ${sigla}
    Input Text    ${ROOM_ADD_INPUT_OBS}    ${obs}

adicionar baia 1
    [Arguments]   ${espaço}   ${sigla}     ${obs}
    Wait Until Element Is Visible    ${ROOM_ADD_BAIA_BUTTON}
    Click Element    ${ROOM_ADD_BAIA_BUTTON}
    Wait Until Element Is Visible    ${ROOM_ADD_BAIA_SIGLA1}
    Input Text    ${ROOM_ADD_BAIA_ESPACO1}    ${espaço}
    Input Text    ${ROOM_ADD_BAIA_SIGLA1}    ${sigla}
    Input Text    ${ROOM_ADD_BAIA_OBS1}    ${obs}

adicionar baia 2
    [Arguments]   ${espaço}   ${sigla}     ${obs}
    Wait Until Element Is Visible    ${ROOM_ADD_BAIA_BUTTON}
    Click Element    ${ROOM_ADD_BAIA_BUTTON}
    Wait Until Element Is Visible    ${ROOM_ADD_BAIA_SIGLA2}
    Input Text    ${ROOM_ADD_BAIA_ESPACO2}    ${espaço}
    Input Text    ${ROOM_ADD_BAIA_SIGLA2}    ${sigla}
    Input Text    ${ROOM_ADD_BAIA_OBS2}    ${obs}

testa room page
    Element Text Should Be    ${ROOM_SIGLA}    ${ROOM_SIGLATEXT}
    Element Text Should Be    ${ROOM_NOME}    ${ROOM_NOMETEXT}
    Element Text Should Be    ${ROOM_DESCRICAO}    ${ROOM_DESCRICAOTEXT}

testa pesquisar sala
    Wait Until Element Is Visible    ${ROOM_INPUT_PESQUISAR}
    Input Text    ${ROOM_INPUT_PESQUISAR}    LATIM       
    Click Element    ${ROOM_BUTTON_APAGAR}
    Input Text    ${ROOM_INPUT_PESQUISAR}    LASIC

testa botão apagar baia
    Click Element    ${ROOM_ADD_BAIA_BUTTON}
    Click Element    ${ROOM_ADD_BAIA_OBS3}
    Sleep    1s
    Click Element    ${ROOM_ADD_APAGAR_BAIA3}

salvar sala
    Click Element    ${ROOM_ADD_BUTTON_SALVAR}
    Wait Until Location Is    ${ROOM_PAGE_URL}

apagar sala
    Click Element    ${ROOM_TABLE_REMOVE_BUTTON}
    Click Element    ${ROOM_DELETE_CONFIRM_BUTTON}

editar sala 
    Click Element    ${ROOM_TABLE_EDIT_BUTTON}
    adicionar baia 1    ${ESPACO_NOME}    ${ESPACO_SIGLA}    ${ESPACO_OBS} 
    salvar sala

testa editar sala
    [Arguments]    ${nome}    ${sigla}    ${obs}
    Wait Until Element Is Visible    ${ROOM_TABLE_EDIT_BUTTON}    7s
    Click Element   ${ROOM_TABLE_EDIT_BUTTON}
    Wait Until Element Is Visible    ${ROOM_EDIT_NAME_INPUT}
    Element Attribute Value Should Be    ${ROOM_EDIT_NAME_INPUT}   value   ${nome}
    Element Attribute Value Should Be    ${ROOM_EDIT_SIGLA_INPUT}  value   ${sigla}
    Element Attribute Value Should Be    ${ROOM_EDIT_OBS_INPUT}    value   ${obs}
    Click Element    ${ROOM_EDIT_BUTTON_CANCEL}

testar se é possível apagar baia com computador
    Wait Until Element Is Visible    ${ROOM_TABLE_EDIT_BUTTON}
    Click Element    ${ROOM_TABLE_EDIT_BUTTON}
    Wait Until Element Is Visible    ${ROOM_EDIT_NAME_INPUT}
    Element Attribute Value Should Be    ${ROOM_EDIT_APAGAR_BAIA1}    title    ${ROOM_EDIT_TRASH_ELEMENT_TITLE}
    Click Element    ${ROOM_EDIT_BUTTON_CANCEL}