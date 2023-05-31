*** Settings ***
Library    SeleniumLibrary

Variables    ../variables/machines/machines-edit.py
Variables    ../variables/machines/machines-datagrid.py
Variables    ../variables/machines/machines-add.py
Variables    ../variables/machines/machines-delete.py
Variables    ../variables/machines/machines-robotvariables.py

*** Keywords ***
adicionar maquina
    [Arguments]    ${nome}    ${patrimonio}    ${descriçao}    ${sala_desejada}    ${espaço_desejado}
    Wait Until Element Is Visible    ${MACHINE_ADD_BUTTON}
    Click Element    ${MACHINE_ADD_BUTTON}
    Wait Until Location Is    ${MACHINE_ADD_PAGE_URL}
    Wait Until Element Is Visible    ${MACHINE_ADD_MAQUINA_INPUT}
    Input Text    ${MACHINE_ADD_MAQUINA_INPUT}    ${nome}
    Input Text    ${MACHINE_ADD_PATRIMONIO_INPUT}    ${patrimonio}    
    Input Text    ${MACHINE_ADD_DESCRICAO_INPUT}    ${descriçao}
    Input Text    ${MACHINE_ADD_SALA_INPUT}    ${sala_desejada}
    Input Text    ${MACHINE_ADD_ESPACO_INPUT}    ${espaço_desejado}
    salvar maquina
    
testa machine page
    Element Text Should Be    ${MACHINE_DESCRICAO}    ${MACHINE_DESCRICAOTEXT}
    Element Text Should Be    ${MACHINE_ESPACO}    ${MACHINE_ESPACOTEXT}
    Element Text Should Be    ${MACHINE_MAQUINAS}    ${MACHINE_MAQUINASTEXT}
    Element Text Should Be    ${MACHINE_PATRIMONIO}    ${MACHINE_PATRIMONIOTEXT}
    Element Text Should Be    ${MACHINE_SALA}    ${MACHINE_SALATEXT}

apagar maquina
    Click Element    ${MACHINE_TABLE_REMOVE_BUTTON}
    Click Element    ${MACHINE_DELETE_CONFIRM_BUTTON}

salvar maquina
    Click Element    ${MACHINE_ADD_BUTTON_SALVAR}


testa pesquisar maquina
    Wait Until Element Is Visible    ${MACHINE_INPUT_PESQUISAR}
    Input Text    ${MACHINE_INPUT_PESQUISAR}    ESPAÇO 1
    Click Element    ${MACHINE_BUTTON_APAGAR}
    Input Text    ${MACHINE_INPUT_PESQUISAR}    ESPAÇO 2

testa editar maquina
    [Arguments]    ${nome}    ${patrimonio}    ${descriçao}    ${sala_desejada}    ${espaço_desejado}
    Wait Until Element Is Visible    ${MACHINE_TABLE_EDIT_BUTTON}
    Click Element    ${MACHINE_TABLE_EDIT_BUTTON}
    Wait Until Element Is Visible    ${MACHINE_EDIT_PATRIMONIO_INPUT}
    Element Attribute Value Should Be    ${MACHINE_EDIT_MAQUINA_INPUT}      value      ${nome}
    Element Attribute Value Should Be    ${MACHINE_EDIT_PATRIMONIO_INPUT}   value      ${patrimonio}
    Element Attribute Value Should Be    ${MACHINE_EDIT_DESCRICAO_INPUT}    value      ${descriçao}
    Element Attribute Value Should Be    ${MACHINE_EDIT_SALA_INPUT}         value      ${sala_desejada}
    Element Attribute Value Should Be    ${MACHINE_EDIT_ESPACO_INPUT}       value      ${espaço_desejado}
    Click Element    ${MACHINE_EDIT_BUTTON_CANCEL}