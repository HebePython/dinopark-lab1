*** Settings ***
Documentation     
...    Grupp 1, Sjubaib - VG_Del

...    Testar ogiltig registrering och inloggning för att verifiera systemets felhantering. 
...      - Registrering: Nekad vid för kort lösenord samt redan existerande användare.  
...      - Inloggning: Nekad vid felaktigt lösenord samt oregistrerad användare.
 
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Teardown    Close Browser


*** Test Cases ***


