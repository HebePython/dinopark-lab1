*** Settings ***
Documentation    Robot lab 1, Login function
Library    SeleniumLibrary

*** Keywords ***
Valid Login 
    [Tags]    Henrik Bergman
    [Arguments]    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    Wait Until Element Is Visible    ${username_element}    
    Input Text    ${username_element}   ${valid_username} 
    Input Text    ${password_element}    ${valid_password}  
    Click Button    ${login_button}
    Wait Until Element Is Visible    ${home_page_section}
    sleep     3s

Open Browser To Login Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}    ${login_header_button}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    ${login_header_button}


Open Login Section
    [Tags]    Henrik Bergman
    [Arguments]    ${login_header_button}    ${login_section}
    Click Link    ${login_header_button}
    Wait Until Element Is Visible    ${login_section}