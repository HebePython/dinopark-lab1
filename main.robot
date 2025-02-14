*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Teardown    Close Browser


*** Test Cases ***

Test Valid User Registration
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${new_user_username}
   Type In Element   ${password_input_id}   ${new_user_password}
   Click Submit Button   ${register_button}
   Message visibility and validation   ${register_message}   ${registration_success_message}   10  

Test Register With Existing Username
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${new_user_username}
   Type In Element   ${password_input_id}   ${new_user_password}
   Click Submit Button   ${register_button}
   Message visibility and validation    ${register_message}    ${error_existing_user_message}   10

Test Registration With Empty Fields
   [Tags]   Sjubaib
   Open Browser To Page   ${url}  ${browser}   ${title}
   Click Navigation Element   ${register_navigation_Element}
   Type In Element   ${username_input_id}   ${empty_username}
   Type In Element   ${password_input_id}   ${empty_password}
   Click Submit Button   ${register_button}
   Message visibility and validation    ${register_message}    ${error_empty_fields_message}   10

    



