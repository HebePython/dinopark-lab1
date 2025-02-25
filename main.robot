*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser


*** Test Cases ***
# ------------------------
# Paleontologen Stina-Palle
# ------------------------
Book Herbivore and T-rex Rumble Safari Weekday
    [Tags]    Henrik Bergman  
    [Documentation]    Testar Köp av 1 adult ticket och bokning av två safari turer på samma dag.
    Given User Is Registered And Logged In     ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    And Regular Adult Ticket Is In Cart    ${buy_tickets}    ${tickets_page}    ${type_age}    ${type_category}    ${quantity}    ${add_cart}    ${page_contains}
    And Safari Page Is Open    ${safari_header_link}    ${safari_page_section}
    When Herbivore Tour and T-rex Rumble Safari Is Added To Cart    ${safari_dropdown_element}    ${submit_safari_button}    ${weekday_user_input}    ${date_input_element}
    Then Checkout Should Be Successful   ${checkout_header_link}   ${checkout_page_section}    ${checkout_total_cost_element}    Total: $320    ${checkout_submit_button}

Check Ticket Price
    [Tags]    Abdirahman Bayle
    [Documentation]    Testar Att man kan se ticket price
    Given User Is Registered And Logged In     ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    And Regular Adult Ticket Is In Cart    ${buy_tickets}    ${tickets_page}    ${type_age}    ${type_category}    ${quantity}    ${add_cart}    ${page_contains}
    When User Clicks Cart    ${checkout_header_link}
    Then User Sees Price    ${checkout_page_section}    ${checkout_total_cost_element}    Total: $50

# ------------------------
# Kim och Familjen
# ------------------------

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



