*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
Test Teardown    Close Browser



*** Test Cases ***
# ------------------------
# Registration Tests
# ------------------------
Test Valid User Registration
   [Tags]   Sjubaib
   Open Browser To Incognito Page   ${url}  ${browser}   ${title}
   Register New User   ${valid_username}   ${valid_password}
   Message visibility and validation  ${register_message}   ${registration_success_message}   10 

Test Register With Existing Username
   [Tags]    Sjubaib
    Open Browser To Page    ${url}    ${browser}    ${title}
    Register New User    ${valid_username}    ${valid_password}
    Register New User    ${valid_username}    ${valid_password}
    Message visibility and validation    ${register_message}    ${error_existing_user_message}    10

Test Registration With Empty Fields
   [Tags]   Sjubaib
   Open Browser To Page    ${url}    ${browser}    ${title}
   Register New User    ${empty_username}    ${empty_password}
   Message visibility and validation    ${register_message}    ${error_empty_fields_message}    10

Test Registration With Too Short Password
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Register New User    ${short_password_username}    ${short_password}
   Message visibility and validation    ${register_message}    ${error_short_password_message}    10

# ------------------------
# Login Tests
# ------------------------
Valid Login Test
    [Tags]    Henrik Bergman
    Open Browser To Login Page    ${url}    ${browser}    ${title}    ${login_header_button}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}

Valid Registration and Login Test
    [Tags]    Henrik Bergman, Sjubaib
    Open Browser To Incognito Page   ${url}  ${browser}   ${title}    
    Register New User    ${valid_username}    ${valid_password}
    Message visibility and validation   ${register_message}   ${registration_success_message}   10  

    Open Login Section    ${login_header_button}    ${login_section}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}


# ------------------------
# Safari Booking Tests
# ------------------------
Book Herbivore Safari Weekday
    [Tags]    Henrik Bergman  
    Given User Is Registered And Logged In     ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    And Regular Adult Ticket Is In Cart
    And Safari Page Is Open    ${url}    ${browser}    ${title}    ${safari_header_link}    ${safari_page_section}
    When Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    And Herbivore Tour Safari Is Selected    ${safari_dropdown_element}
    Then Add Safari To Cart    ${submit_safari_button}
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


Valid Buy Ticket Test
    Open Browser To Page    ${url}    ${browser}    ${title}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}   
    Choose Type, Category and Quantity    ${type_age}   ${type_category}    ${quantity}    5    Child    VIP
    Click Add To Cart    ${add_cart}    ${page_contains}






