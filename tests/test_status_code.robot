*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://reqres.in

*** Test Cases ***
Check Status Code
    [Documentation]    Verificar que una solicitud GET a un recurso inexistente devuelva un código de estado 404.
    Create Session    reqres    ${BASE_URL}

    ${response}=    GET On Session    reqres    /api/users/23    expected_status=any
    Log    ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    404
