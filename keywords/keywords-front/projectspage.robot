*** Settings ***
Library    SeleniumLibrary

Variables    ../../variables/variables-front/projects/projects-add.py
Variables    ../../variables/variables-front/projects/projects-datagrid.py
Variables    ../../variables/variables-front/projects/projects-delete.py
Variables    ../../variables/variables-front/projects/projects-edit.py
Variables    ../../variables/variables-front/projects/projects-robotvariables.py
*** Keywords ***
adicionar projeto
    [Arguments]    ${nome}    ${sigla}    ${data_start}    ${data_end}    ${descricao}
    Wait Until Element Is Visible    ${PROJECTS_ADD_BUTTON}
    Click Element    ${PROJECTS_ADD_BUTTON}
    Wait Until Location Is    ${PROJECTS_ADD_PAGE_URL}
    Wait Until Element Is Visible    ${PROJECTS_ADD_NOME_INPUT}
    Input Text    ${PROJECTS_ADD_NOME_INPUT}    ${nome}
    Input Text    ${PROJECTS_ADD_SIGLA_INPUT}    ${sigla}
    Input Text    ${PROJECTS_ADD_DATASTART}    ${data_start}
    Input Text    ${PROJECTS_ADD_DATAEND}    ${data_end}
    Input Text    ${PROJECTS_ADD_DESC}    ${descricao}

    Click Element    ${PROJECTS_ADD_STATUS}
    Wait Until Element Is Visible    ${PROJECTS_ADD_STATUS_SELECTOR1}
    Click Element    ${PROJECTS_ADD_STATUS_SELECTOR1}

    Click Element    ${PROJECTS_ADD_COORD}
    Wait Until Element Is Visible    ${PROJECTS_ADD_COORD_SELECTOR}
    Click Element    ${PROJECTS_ADD_COORD_SELECTOR}

adicionar membros 1
    [Arguments]    ${seletor_do_usuario}    ${seletor_da_maquina}    ${seletor_do_turno}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_BUTTON}
    Click Element    ${PROJECTS_ADD_ADDMEMBER_BUTTON}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_USER1}

    Click Element    ${PROJECTS_ADD_ADDMEMBER_USER1}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_USER1_SELECTOR1}
    Click Element    ${seletor_do_usuario}

    Click Element    ${PROJECTS_ADD_ADDMEMBER_MACHINE1}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_MACHINE1_SELECTOR1}
    Click Element    ${seletor_da_maquina} 

    Click Element    ${PROJECTS_ADD_ADDMEMBER_TURN1}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_TURN1_SELECTOR1}
    Click Element    ${seletor_do_turno}

adicionar membros 2
    [Arguments]    ${seletor_do_usuario}    ${seletor_da_maquina}    ${seletor_do_turno}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_BUTTON}
    Click Element    ${PROJECTS_ADD_ADDMEMBER_BUTTON}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_USER2}

    Click Element    ${PROJECTS_ADD_ADDMEMBER_USER2}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_USER2_SELECTOR1}
    Click Element    ${seletor_do_usuario}

    Click Element    ${PROJECTS_ADD_ADDMEMBER_MACHINE2}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_MACHINE2_SELECTOR1}
    Click Element    ${seletor_da_maquina} 

    Click Element    ${PROJECTS_ADD_ADDMEMBER_TURN2}
    Wait Until Element Is Visible    ${PROJECTS_ADD_ADDMEMBER_TURN2_SELECTOR1}
    Click Element    ${seletor_do_turno}

salvar projeto
    Click Element    ${PROJECTS_ADD_BUTTON_SALVAR}

cancelar projeto
    Click Element    ${PROJECTS_ADD_BUTTON_CANCEL}

apagar projeto
    Click Element    ${PROJECTS_TABLE_REMOVE_BUTTON}
    Click Element    ${PROJECTS_DELETE_CONFIRM_BUTTON}

