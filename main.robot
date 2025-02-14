*** Settings ***
Documentation    Robot lab 1
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Teardown    Close Browser


*** Test Cases ***

Valid But Ticket Test
    Open Browser To Page    ${url}    ${browser}    ${title}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}   
