*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Custom Header Example
    Create Session    example    https://jsonplaceholder.typicode.com
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}=    Get Request    example    /posts/1    headers=${headers}
    Log    ${response.status_code}
    Log    ${response.content}
