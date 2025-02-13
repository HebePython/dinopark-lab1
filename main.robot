*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Teardown    Close Browser


*** Test Cases ***
Test Open Page
    Open Browser To Page    ${url}    ${browser}    ${title}
    



Valid Login Test
    Open Browser To Login Page    ${url}    ${browser}    ${title}    ${login_header_button}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}
