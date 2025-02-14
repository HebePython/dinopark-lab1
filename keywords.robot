*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s


