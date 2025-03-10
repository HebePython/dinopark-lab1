*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/keywords.robot
Resource    ${EXECDIR}/resources/keyword_files/kim_keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser

*** Test Cases ***

Test Book Herbivore Safari with Feeding on Weekend
   [Tags]   Sjubaib Rifai    new-feature
   [Documentation]    Testar att köpa 2 adult & 2 child VIP tickets och safari med matning på helgen 
    Given User is Registered and Logged In
      And User has 2 Adult and 2 Child VIP Tickets in Cart 
      And Safari Page is Open
    When User Selects a Weekend Day
      And User Selects Herbivore Tour with Feeding
    Then Safari Should Be Added to Cart 
      And Checkout Should Be Successful    Total: $500
