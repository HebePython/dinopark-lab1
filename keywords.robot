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
    [Tags]    Abdirahman Bayle
    [Arguments]    ${buy_tickets}    ${tickets_page}    
    Click Link     ${buy_tickets}    
    Wait Until Page Contains Element   ${tickets_page}    timeout= 10s
    
Choose Type, Category and Quantity
    [Tags]    Abdirahman Bayle
    [Arguments]    ${type_age}    ${type_category}    ${quantity}    ${quantity_num}    ${age}    ${ticket}
    Select From List By Value    ${type_age}    ${age}     
    Select From List By Value    ${type_category}    ${ticket}
    Input Text    ${quantity}    ${quantity_num}

Click Add To Cart
    [Tags]    Abdirahman Bayle
    [Arguments]    ${add_cart}    ${page_contains}
    Click Button    ${add_cart}
    Wait Until Page Contains    ${page_contains}

