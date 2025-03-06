*** Settings ***
Documentation    Robot lab 2, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/stinapalle_keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser

*** Test Cases ***
Book Herbivore and T-rex Rumble Safari Weekday
    [Tags]    Henrik Bergman  
    [Documentation]    Testar Köp av 1 adult ticket och bokning av två safari turer på samma dag.
    Given User Is Registered And Logged In
    And Regular Adult Ticket Is In Cart
    And Safari Page Is Open
    When Herbivore Tour and T-rex Rumble Safari Is Added To Cart
    Then Then I Am Able To Buy Them

Check Ticket Price
    [Tags]    Abdirahman Bayle, Refactored Henrik Bergman
    [Documentation]    Testar Att man kan se ticket price
    Given User Is Registered And Logged In
    And Regular Adult Ticket Is In Cart
    When User Clicks Cart
    Then User Sees Price

