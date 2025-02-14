*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
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
# Registration And Login Tests
# ------------------------

# ------------------------
# Safari Booking Tests
# ------------------------
Book Herbivore Safari Weekday
    [Tags]    Henrik Bergman  
    Given User Is Registered And Logged In     ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}
    And Regular Adult Ticket Is In Cart
    And Safari Page Is Open    ${url}    ${browser}    ${title}    ${safari_header_link}    ${safari_page_section}
    When Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    And Herbivore Tour Safari Is Selected
    Then Add Safari To Cart
    And Checkout


Book T-Rex Rumble Safari Weekday
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    And Regular Adult Ticket Is In Cart
    And Safari Page Is Open
    When Weekday Is Selected In Calender
    And T-Rex Rumble Safari Is Selected
    Then Add Safari To Cart
    And Checkout

