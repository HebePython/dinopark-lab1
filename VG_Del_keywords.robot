*** Settings ***
Documentation     Grupp 1, Sjubaib - VG_Del - Keywords
Library    SeleniumLibrary
Variables    VG_Del_variables.py

*** Keywords ***
Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    2s

New User Registration
   [Arguments]    ${Username}   ${Password}
   Click Link    ${register_link_element}
   Input Text    ${username_register_element}   ${Username}
   Input Text    ${password_register_element}   ${Password}
   Click Button   ${register_button}

Verify Message
    [Arguments]    ${Message_Element}   ${Text_Message}    ${TimeOut} 
    Wait Until Element Is Visible    ${Message_Element}    ${TimeOut}
    Element Text Should Be    ${Message_Element}   ${Text_Message}    

User is already registered with a specific username
    Open Browser To Page   ${url}    ${browser}    ${title}
    New User Registration   ${valid_username}   ${valid_password}
    Verify Message    ${register_message_element}     ${registration_success_message}    10

Same username is used for a new registration
    New User Registration   ${valid_username}   ${valid_password}

The system should display an error message: "Username already exists. Please choose another." 
    Verify Message    ${register_message_element}     ${error_existing_user_message}   10

User is on the registration page
    Open Browser To Page    ${url}    ${browser}    ${title}
    Click Link    ${register_link_element}
    Wait Until Element Is Visible   ${register_page_section}    10

User enters a password that is too short  
    Input Text    ${username_register_element}   ${short_password_username}
    Input Text    ${password_register_element}   ${short_password}
    Click Button   ${register_button}

The system should display an error message: "Password must be at least 8 characters long."
    Verify Message    ${register_message_element}     ${error_short_password_message}    10

User is registered
    User is already registered with a specific username
    Wait Until Element Is Visible    ${login_page_section}    10

User enters the correct username but the wrong password 
    Input Text    ${username_login_element}    ${valid_username}
    Input Text    ${password_login_element}    ${invalid_password}
    Click Button    ${login_button}

System should display an error message: "Invalid username or password."
    Wait Until Element Contains    ${login_message_element}     Verifying credentials...    5
    Wait Until Keyword Succeeds    5   1    Element Should Contain    ${login_message_element}    ${error_invalid_login_message}     

User is on the login page
    Open Browser To Page    ${url}    ${browser}    ${title}
    Click Link    ${login_link_element}
    Wait Until Element Is Visible    ${login_page_section}    10

User enters an unregistered username 
    Input Text    ${username_login_element}    ${unregistered_username}  
    Input Text    ${password_login_element}    ${valid_password}
    Click Button    ${login_button}  



    