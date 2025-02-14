*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}

Navigate TO Buy Tickets Page
    [Arguments]    ${buy_tickets}    ${tickets_page}    
    Click Link     ${buy_tickets}    
    Wait Until Page Contains Element   ${tickets_page}    timeout= 10s
    


