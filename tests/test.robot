*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
singup the newuser 
    Open Browser    ${URL}    Chrome    
    go to Singup page        
    input the username
    input the email
    click singup
    Close All Browsers

add blue top in the products
    Open Browser    ${URL}    Chrome
    click prodructs
    search prodructs
    view product
    Quantity
    Add to cart
    Sleep    15s



