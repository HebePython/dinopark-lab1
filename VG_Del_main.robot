*** Settings ***
Documentation     
...    Grupp 1, Sjubaib - VG_Del

...    Testar ogiltig registrering och inloggning för att verifiera systemets felhantering. 
...      - Registrering: Nekad vid för kort lösenord samt redan existerande användare.  
...      - Inloggning: Nekad vid felaktigt lösenord samt oregistrerad användare.
 
Library    SeleniumLibrary
Resource    VG_Del_keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser


*** Test Cases ***

Register With Existing Username
     [Tags]    Registration   Negative   Validation  
     [Documentation]  Verifies that duplicate usernames are not allowed. 
     Given User is already registered with a specific username 
     When Same username is used for a new registration
     Then The system should display an error message: "Username already exists. Please choose another."  
     
Register With Short Password
     [Tags]   Registration   Negative   Validation  
     [Documentation]  Verifies that registration is rejected for a password that is too short.
     Given User is on the registration page  
     When User enters a password that is too short  
     Then The system should display an error message: "Password must be at least 8 characters long." 

Login With Incorrect Password
    [Tags]   Login   Negative   Validation  
    [Documentation]  Verifies that login fails when an incorrect password is used.
    Given User is registered  
    When User enters the correct username but the wrong password  
    Then System should display an error message: "Invalid username or password."

Login With Unregistered Username
    [Tags]   Login   Negative   Validation  
    [Documentation]  Verifies that login fails for an unregistered username.
    Given User is on the login page
    When User enters an unregistered username
    Then System should display an error message: "Invalid username or password."
    

