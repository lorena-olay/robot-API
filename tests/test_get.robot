*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get Users
    [Documentation]    Obtener la lista de usuarios
    ${response}=    GET    ${BASE_URL}/users
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}
