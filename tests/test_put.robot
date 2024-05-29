*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Put Example
    Create Session    example    https://jsonplaceholder.typicode.com
    ${data}=    Create Dictionary    id=1    title=foo    body=bar    userId=1
    ${response}=    Put Request    example    /posts/1    data=${data}
    Should Be Equal As Strings    ${response.status_code}    200
    Log    ${response.content}
