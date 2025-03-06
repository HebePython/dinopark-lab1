*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser


*** Test Cases ***
# ------------------------
# Registration Tests
# ------------------------
Test Valid User Registration
   [Tags]   Sjubaib Rifai
   Register New User   ${valid_username}   ${valid_password}
   Message visibility and validation  ${register_message}   ${registration_success_message}   10 

# ------------------------
# Login Tests
# ------------------------

Valid Registration and Login Test   
    [Tags]    Henrik Bergman, Sjubaib Rifai
    Register New User    ${valid_username}    ${valid_password}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}


# ------------------------
# Buy Ticket Test
# ------------------------

Valid Buy Ticket Test
    [Tags]    Abdirahman Bayle
    User Is Registered And Logged In     ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}   
    Choose Type, Category and Quantity    ${type_age}   ${type_category}    ${quantity}    5    Child    VIP
    Click Add To Cart    ${add_cart}


