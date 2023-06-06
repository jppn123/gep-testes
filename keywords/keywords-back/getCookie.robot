*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary
Resource    ../../variables/variables-back/getCookies.robot
*** Keywords ***
pegar cookie authorization
    ${Auth}=     Get Cookie    params
    &{header}=   Create Dictionary    Content-type=application/json    Authorization=${Auth.value}   
    # Auth.value vai ser o valor do header Authorization que deverá ser insertado depois
    Set Test Variable    &{header}

iniciar sessão com o header
    Create Session    sessão    ${url}    ${header}
    