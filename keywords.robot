*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary

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
    [Arguments]


# ------------------------
# Safari
# ------------------------
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