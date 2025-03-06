*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/keywords.robot
Resource    ${EXECDIR}/resources/keyword_files/kim_keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser

*** Test Cases ***

Test Book Herbivore Safari with Feeding on Weekend
   [Tags]   Sjubaib Rifai
   [Documentation]    Testar att köpa 2 adult & 2 child VIP tickets och safari med matning på helgen 
    Given User is Registered and Logged In   ${valid_username}    ${valid_password}   ${username_element}    ${password_element}    ${login_button}   ${home_page_section}
      And User has 2 Adult and 2 Child VIP Tickets in Cart 
      And Safari Page is Open    ${safari_header_link}    ${safari_page_section}
    When User Selects a Weekend Day
      And User Selects Herbivore Tour with Feeding
    Then Safari Should Be Added to Cart    ${submit_safari_button}
      And Checkout Should Be Successful   ${checkout_header_link}   ${checkout_page_section}    ${checkout_total_cost_element}    Total: $500    ${checkout_submit_button}
