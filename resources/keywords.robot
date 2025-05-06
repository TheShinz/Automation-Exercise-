*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot
*** Keywords ***
go to Singup page
    Open Browser    ${urllogin}

input the username
    Input Text    name:name    ${username}

input the email
    Input Text    xpath=//input[@data-qa="signup-email"]    ${email}

click singup
    Click Element    xpath=//button[@type="submit"]

click products
    Click Element    xpath=//a[@href="/products"]    

search products
    Input Text    name:search    blue top
    Click Element    id:submit_search

view product
    Click Element    xpath=//a[@href="/product_details/1" and contains (., "View Product")]

Quantity
    Input Text    id:quantity    5

Add to cart
    Click Element   xpath=//button[@type="button"]




    
    