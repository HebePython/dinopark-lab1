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
Test Valid User Registration
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${valid_username}
   Type In Element   ${password_input_id}   ${valid_password}
   Click Submit Button   ${register_button}
   Message visibility and validation   ${register_message}   ${registration_success_message}   10  

Test Register With Existing Username
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${valid_username}
   Type In Element   ${password_input_id}   ${valid_password}
   Click Submit Button   ${register_button}
   
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${valid_username}
   Type In Element   ${password_input_id}   ${valid_password}
   Click Submit Button   ${register_button}
   Message visibility and validation    ${register_message}   ${error_existing_user_message}   10

Test Registration With Empty Fields
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${empty_username}
   Type In Element   ${password_input_id}   ${empty_password}
   Click Submit Button   ${register_button}
   Message visibility and validation    ${register_message}    ${error_empty_fields_message}   10

Test Registration With Too Short Password
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${short_password_username}
   Type In Element   ${password_input_id}   ${short_password}
   Click Submit Button   ${register_button}
   Message visibility and validation    ${register_message}    ${error_short_password_message}   10
   
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



