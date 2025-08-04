*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    variables.robot
*** Keywords ***

Open Browser To Homepage
    Open Browser     ${URL}    
    # Maximize Browser Window

go to Singup page
    Click Element    xpath=//a[@href="/login"]  


input the email
    Input Text    name:name    ${email}

input the password
    Input Text    xpath=//input[@data-qa="signup-email"]    ${password}

click singup
    Click Element    xpath=(//button[@type="submit"])[2]

go to products page
    Click Element    xpath=//a[@href="/products"]    

search products
    Input Text    name:search    blue top
    Click Element    id:submit_search

wait for view product
    Wait Until Page Contains Element    xpath=//a[contains(., 'View Product')]    timeout=10s
    
view product
    Click Element    xpath=//a[@href="/product_details/1" and contains (., "View Product")]

Quantity
    Input Text    id:quantity    5

Add to cart
    Click Element   xpath=//button[@type="button"]

Go to cart page
     Click Element    xpath=//*[contains(text(), 'View Cart')]


Click detele product
    Click Element    xpath=//i[@class='fa fa-times']



    
    