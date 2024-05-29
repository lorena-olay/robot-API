*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Delete Example
    Create Session    example    https://jsonplaceholder.typicode.com
    ${response}=    Delete Request    example    /posts/1
    Should Be Equal As Strings    ${response.status_code}    200
    Log    ${response.content}
