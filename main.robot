*** Settings ***
Documentation    Robot lab 1
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Teardown    Close Browser







*** Test Cases ***

Valid Buy Ticket Test
    Open Browser To Page    ${url}    ${browser}    ${title}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}   
    Choose Type, Category and Quantity    ${type_age}   ${type_category}    ${quantity}
    Click Add To Cart    ${add_cart}    ${page_contains}






Non Valid Buy Ticket Test
    Open Browser To Page    ${url}    ${browser}    ${title}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}   
    Choose Type, Category and Quantity    ${type_age}   ${type_category}    ${quantity}
    Click Add To Cart    ${add_cart}    ${page_contains}