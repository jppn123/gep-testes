*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    RequestsLibrary

*** Keywords ***
pegar cookie authorization
    ${Auth}=     Get Cookie    params
    # Auth.value vai ser o valor do header Authorization que deverá ser insertado depois
    Log To Console    ${Auth.value}