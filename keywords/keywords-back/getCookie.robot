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
    ${resposta}=    GET On Session    sessão    room     
    Log    valor da response: ${resposta.json()}
    Log    resposta text: ${resposta.text}
    Status Should Be    200    ${resposta}
    ${id}=    Convert To Integer    1
    ${post}=    Create Dictionary    abbreviation=LATAM    description=Sala latam    id=${id}    room=LATAM    spaces=[]   
    Log    ${post}
    ${resposta}=    POST On Session    sessão    room    ${post}