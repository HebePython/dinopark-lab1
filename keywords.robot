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
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s
# ------------------------
# User Registration
# ------------------------
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