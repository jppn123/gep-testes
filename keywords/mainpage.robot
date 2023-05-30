*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/mainpage.py

*** Keywords ***
abrir navegador no site
    Open Browser    ${MAIN_PAGE_URL}    ${DRIVER}
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
    
