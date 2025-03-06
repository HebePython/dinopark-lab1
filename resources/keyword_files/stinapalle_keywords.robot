*** Settings ***
Documentation    Robot lab 2, keywords, Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    login_function.robot
Resource    keywords.robot

*** Keywords ***
Herbivore Tour and T-Rex Rumble Safari Is Added To Cart
    [Tags]    Henrik Bergman
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    Herbivore Tour
    Safari Should Be Added to Cart   ${submit_safari_button}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    T-Rex Rumble
    Safari Should Be Added to Cart    ${submit_safari_button}

Regular Adult Ticket Is In Cart
    [Tags]    Henrik Bergman
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page} 
    Choose Type, Category and Quantity    ${type_age}    ${type_category}    ${quantity}    1    Adult    Regular
    Click Add To Cart    ${add_cart} 

Then I Am Able To Buy Them
    [Tags]    Henrik Bergman
    Checkout Should Be Successful    Total: $320