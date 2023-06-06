*** Settings ***
Library    SeleniumLibrary
Variables     ../../variables/variables-front/homepage.py
Variables    ../../variables/variables-front/mainpage.py

*** Keywords ***
verificar se está na homepage    
    Wait Until Location Is    ${HOME_PAGE_URL}    10s
    Location Should Be    ${HOME_PAGE_URL}

abrir navegador no site
    Open Browser    ${MAIN_PAGE_URL}    ${DRIVER}    options=add_argument("--headless")
    Maximize Browser Window
    Title Should Be    ${TITLE}
    Location Should Be    ${MAIN_PAGE_URL}    

fazer login pelo google
    Sleep    1s
    Click Button    ${GOOGLE_BUTTON}

    Sleep    1s
    Input Text    ${GOOGLE_LOGIN}    ${LOGIN}
    Click Element    ${GOOGLE_BUTTON_AVANCAR1}

    Sleep    2s
    Input Password    ${GOOGLE_PASS}    ${PASSWORD}    
    Click Element    ${GOOGLE_BUTTONAVANCAR2}
    
