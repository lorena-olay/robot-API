*** Settings ***
Documentation   this test file sends a POST request to an API, creates a new resource and then verifies that the new resource's data matches the data resource matches the data provided in the request.
Library     RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Create New Post
    [Documentation]    Crear una nueva publicación
    ${data}=    Create Dictionary    title=foo    body=bar    userId=1
    ${response}=    POST    ${BASE_URL}/posts    json=${data}
    Should Be Equal As Numbers    ${response.status_code}    201
    ${response_json}=    Set Variable    ${response.json()}
    Should Be Equal    ${response_json['title']}    foo
    Should Be Equal    ${response_json['body']}    bar
    Should Be Equal    ${response_json['userId']}    1
