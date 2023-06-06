*** Settings ***
Resource    getCookie.robot

*** Keywords ***
GetAllRooms method
    ${responseGet}=    GET On Session    sessão    room     
    Log To Console   valor da response: ${responseGet.text}
    Status Should Be    200    ${responseGet}    

GetRoomById method
    [Arguments]    ${id_da_sala}
    ${responseGet}=    GET On Session    sessão    room/${id_da_sala}
    Log To Console   valor da response: ${responseGet.text}
    Status Should Be    200    ${responseGet}
PostRoom method
    ${id}=    Convert To Integer    1
    ${postDictionary}=    Create Dictionary    abbreviation=LATAM    description=Sala latam    id=${id}    room=LATAM    spaces=   
    ${responsePost}=    POST On Session  sessão    room    json=${postDictionary}
    Status Should Be    200    ${responsePost}

DeleteById method
    [Arguments]    ${id_da_sala_para_apagar}
    ${responseDelete}=    DELETE On Session    sessão    room/${id_da_sala_para_apagar}
    Status Should Be    204    ${responseDelete}

