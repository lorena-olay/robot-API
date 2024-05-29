*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Query String Example
    Create Session    Products API    https://api.example.com/products
    ${type}=    Set Variable    electronics
    ${max_price}=    Set Variable    500
    ${url}=    Set Variable    https://api.example.com/products?type=${type}&max_price=${max_price}
    ${response}=    GET On Session    Products API    ${url}
    Log    ${response.status_code}
    Log    ${response.content}
