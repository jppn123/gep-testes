*** Settings ***
Library    SeleniumLibrary

Variables    ../../variables/variables-front/users/users-edit.py
Variables    ../../variables/variables-front/users/users-delete.py
Variables    ../../variables/variables-front/users/users-datagrid.py
Variables    ../../variables/variables-front/users/users-add.py
Variables    ../../variables/variables-front/users/users-robotvariables.py

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
    Click Element    ${USER_ADD_INPUT_TYPES}     
    Wait Until Element Is Visible    ${USER_ADD_INPUT_TYPES_SELECTOR}
    click element     ${USER_ADD_INPUT_TYPES_SELECTOR}

    Click Element    ${USER_ADD_BUTTON_NIVEL}
    Click Element    ${USER_ADD_INPUT_LEVELACCESS}    
    Wait Until Element Is Visible    ${USER_ADD_INPUT_LEVELACCESS_SELECTOR}
    Click Element    ${USER_ADD_INPUT_LEVELACCESS_SELECTOR}
    Click Element    ${USER_ADD_BUTTON_SALVAR}

testa user page
    Element Text Should Be    ${USER_NOME}    ${USER_NOMETEXT}
    Element Text Should Be    ${USER_TYPE}    ${USER_TYPETEXT}
    Element Text Should Be    ${USER_EMAIL}    ${USER_EMAILTEXT}
    Element Text Should Be    ${USER_ATIVO}    ${USER_ATIVOTEXT}
    Element Text Should Be    ${USER_FONE}    ${USER_FONETEXT}
    Element Text Should Be    ${USER_MATRICULA}    ${USER_MATRICULATEXT}
  
apagar user
    ${val}=    Run Keyword And Return Status    Page Should Contain Element    ${USER_TABLE_REMOVE_BUTTON1}
    IF    ${val}
        Click Element    ${USER_TABLE_REMOVE_BUTTON1}
        Click Element    ${USER_DELETE_CONFIRM_BUTTON}
    END
    
testa pesquisar user
    Wait Until Element Is Visible    ${USER_INPUT_PESQUISAR}
    Input Text    ${USER_INPUT_PESQUISAR}    jao
    Element Text Should Be    ${USER_TABLE_NOME}    Jao
    Element Text Should Be    ${USER_TABLE_TYPE}   Professor 
    Element Text Should Be    ${USER_TABLE_EMAIL}    jao@gmail.com
    Element Text Should Be    ${USER_TABLE_ATIVO}    Sim
    Element Text Should Be    ${USER_TABLE_FONE}    +5585912345678
    Element Text Should Be    ${USER_TABLE_MATRICULA}    12345678998765

testa editar user
    Wait Until Element Is Visible    ${USER_TABLE_EDIT_BUTTON}
    Click Element    ${USER_TABLE_EDIT_BUTTON}
    Wait Until Element Is Visible    ${USER_EDIT_INPUT_EMAIL}
    Element Attribute Value Should Be    ${USER_EDIT_INPUT_NAME}    value    Jao
    Element Attribute Value Should Be    ${USER_EDIT_INPUT_EMAIL}    value    jao@gmail.com
    Element Attribute Value Should Be    ${USER_EDIT_INPUT_MATRICULA}    value      12345678998765
    Element Attribute Value Should Be    ${USER_EDIT_INPUT_TELEFONE}        value        +55 (85) 91234-5678
    Element Attribute Value Should Be    ${USER_EDIT_SELECTOR_TYPES}    value    Professor
    Element Attribute Value Should Be    ${USER_EDIT_SELECTOR_LEVELACCESS}    value    Administrador
    Click Element    ${USER_EDIT_BUTTON_CANCEL}

