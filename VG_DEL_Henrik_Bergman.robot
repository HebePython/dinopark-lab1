*** Settings ***
Documentation    VG Del Henrik Bergman, Grupp 1. Features: Olika biljett typer & Checkout process priser.
Library    SeleniumLibrary
Resource    keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser


*** Test Cases ***
Valid Regular And VIP Tickets
    [Tags]    Henrik Bergman
    [Documentation]    Feature: Olika biljett typer    
    Given User Is Registered And Logged In    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    When Ticket Page Is Open    ${ticket_navigation_link}    ${ticket_page_section}   
    Then I Can Add Adult, Senior And Child Regular Tickets To Cart As Both VIP And Regular     ${ticket_type_HB}    ${ticket_category_HB}    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB} 


Invalid Ticket Quantity
    [Tags]    Henrik Bergman
    [Documentation]    Feature: Olika biljett typer    
    Given User Is Registered And Logged In    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    When Ticket Page Is Open    ${ticket_navigation_link}    ${ticket_page_section}   
    Then I Cannot Buy Zero Or Negative Amount Of Tickets    ${ticket_input_list}    ${ticket_quantity_text_field}    ${add_cart_button_HB}    ${checkout_total_cost_element}


Valid Cart Prices
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    And One Adult Ticket And Herbivore Safari Is In Cart    
    When Cart Page Is Open
    Then I Should See The Prices Of My Cart Items

Valid Cart Prices Alert
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    And One Adult Ticket And Herbivore Safari Is In Cart
    When Cart Page Is Open
    And I Press Proceed To Checkout
    Then I Should See The Prices Of My Cart Items In An Alert

