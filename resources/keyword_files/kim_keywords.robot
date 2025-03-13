*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    keywords.robot

*** Keywords ***

Choose Vip Ticket and Add to Cart 
    [Tags]    Sjubaib Rifai
    [Arguments]    ${ticket_type}    ${quantity_num}   
    Choose Type, Category and Quantity   ${type_age}    ${type_category}    ${quantity}    ${quantity_num}    ${ticket_type}    VIP    
    Click Add To Cart   ${Add_cart} 

User has 2 Adult and 2 Child VIP Tickets in Cart
    [Tags]    Sjubaib Rifai
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page}
    Choose Vip Ticket and Add to Cart   Adult   2   
    Choose Vip Ticket and Add to Cart   Child   2

User Selects a Weekend Day
    [Tags]    Sjubaib Rifai
    Input Text    ${date_input_element}    ${weekend_user_input} 

User Selects Herbivore Tour with Feeding
    [Tags]    Sjubaib Rifai
    Select From List By Value    ${safari_dropdown_element}   ${herbivore_tour_with_feeding_option}

Order Checkout Should Be Successful
    [Tags]    Sjubaib Rifai
    Checkout Should Be Successful    Total: $500


