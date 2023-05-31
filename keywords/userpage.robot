*** Settings ***
Library    SeleniumLibrary

Variables    ../variables/users/users-edit.py
Variables    ../variables/users/users-delete.py
Variables    ../variables/users/users-datagrid.py
Variables    ../variables/users/users-add.py
Variables    ../variables/users/users-robotvariables.py

*** Keywords ***
adicionar usuario
    [Arguments]    ${nome}    ${email}    ${matricula}    ${fone}
    Click Element    ${USER_ADD_BUTTON}
    Wait Until Location Is    ${USER_ADD_PAGE_URL}
    Wait Until Element Is Visible    ${USER_ADD_INPUT_NAME}
    Input Text    ${USER_ADD_INPUT_NAME}    ${nome}
    Input Text    ${USER_ADD_INPUT_EMAIL}    ${email}
    Input Text    ${USER_ADD_INPUT_MATRICULA}    ${matricula}
    Input Text    ${USER_ADD_INPUT_TELEFONE}    ${fone}
    Input Text    ${USER_ADD_INPUT_TYPES}     Professor
    Click Element    ${USER_ADD_INPUT_LEVELACCESS}
    Click Element    ${USER_ADD_BUTTON_NIVEL}
    Input Text    ${USER_ADD_INPUT_LEVELACCESS}    Administrador
    Click Element    ${USER_ADD_BUTTON_SALVAR}

testa user page
    Element Text Should Be    ${USER_NOME}    ${USER_NOMETEXT}
    Element Text Should Be    ${USER_TYPE}    ${USER_TYPETEXT}
    Element Text Should Be    ${USER_EMAIL}    ${USER_EMAILTEXT}
    Element Text Should Be    ${USER_ATIVO}    ${USER_ATIVOTEXT}
    Element Text Should Be    ${USER_FONE}    ${USER_FONETEXT}
    Element Text Should Be    ${USER_MATRICULA}    ${USER_MATRICULATEXT}
  
