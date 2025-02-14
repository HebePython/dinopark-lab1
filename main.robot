*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
Resource    login_function.robot
Resource    safari_function.robot
Variables    variables.py
Test Teardown    Close Browser


*** Test Cases ***
# ------------------------
# Registration And Login Tests
# ------------------------
Valid Login Test
    [Tags]    Henrik Bergman
    Open Browser To Login Page    ${url}    ${browser}    ${title}    ${login_header_button}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}



# ------------------------
# Safari Booking Tests
# ------------------------
Book Herbivore Safari Weekday
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    And Regular Adult Ticket Is In Cart
    When Weekday Is Selected In Calender
    And Herbivore Tour Safari Is Selected
    Then Add Safari To Cart
    And Checkout


Book T-Rex Rumble Safari Weekday
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    And Regular Adult Ticket Is In Cart
    When Weekday Is Selected In Calender
    And T-Rex Rumble Safari Is Selected
    Then Add Safari To Cart
    And Checkout