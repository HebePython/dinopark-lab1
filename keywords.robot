*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary
Resource    login_function.robot

*** Keywords ***
# ------------------------
# Open Browser
# ------------------------
Open Browser To Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}    options=add_argument("--incognito")
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s
# ------------------------
# User Registration
# ------------------------
Type In Element
   [Tags]   Sjubaib
   [Arguments]   ${id_element}   ${text_to_write}
   Input Text   ${id_element}   ${text_to_write}
Click Submit Button
   [Tags]   Sjubaib
   [Arguments]  ${Submit_Button_to_click}  
   Click Button   ${Submit_Button_to_click}
Click Navigation Element
   [Tags]   Sjubaib
   [Arguments]   ${Element_to_click}
   Click Element   ${Element_to_click}
Message visibility and validation
   [Tags]   Sjubaib
   [Arguments]    ${message_Element}    ${messageText}    ${timeout}
   Wait Until Element Is Visible    ${message_Element}    ${timeout}
   Element Text Should Be    ${message_Element}    ${messageText}

User Is Registered And Logged In    
    [Tags]
    [Arguments]    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}


# ------------------------
# Tickets
# ------------------------
Regular Adult Ticket Is In Cart
    [Tags]    Henrik Bergman
    [Arguments]


# ------------------------
# Pick Date
# ------------------------

Weekday Is Selected In Calender
    [Tags]    Henrik Bergman
    [Arguments]    ${weekday_user_input}    ${date_input_element}
    Input Text    ${date_input_element}    ${weekday_user_input} 


# ------------------------
# Safari
# ------------------------
Safari Page Is Open
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}    ${safari_header_link}    ${safari_page_section}
    Open Browser To Page    ${url}    ${browser}    ${title}
    Click Link    ${safari_header_link}
    Wait Until Element Is Visible    ${safari_page_section}

Herbivore Tour Safari Is Selected
    [Tags]    Henrik Bergman
    [Arguments]


T-Rex Rumble Safari Is Selected
    [Tags]    Henrik Bergman
    [Arguments]


Add Safari To Cart
    [Tags]    Henrik Bergman
    [Arguments]


# ------------------------
# Checkout
# ------------------------
Checkout
    [Tags]    Henrik Bergman
    [Arguments]

