*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot
Suite Setup       Open Browser To Homepage
Suite Teardown    Close Browser

*** Test Cases ***
singup the newuser   
    go to Singup page        
    input the email
    input the password
    click singup


add blue top in the products
    go to products page
    search products
    wait for view product
    view product
    Quantity
    Add to cart
    Sleep    5s

detele product
    Go to cart page
    Click detele product
    Sleep    10s


