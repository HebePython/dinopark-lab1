*** Settings ***
Documentation    VG Del Henrik Bergman, Grupp 1. Features: Olika biljett typer & Checkout process priser.
Library    SeleniumLibrary
Resource    keywords.robot
Test Teardown    Close Browser


*** Test Cases ***
Valid Regular Tickets
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    When Ticket Page Is Open
    Then I Can Add Adult, Senior And Child Regular Tickets To Cart


Valid VIP Tickets
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    When Ticket Page Is Open
    Then I Can Add VIP Tickets Of All Types To Cart


Valid Cart Prices
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    And One Adult Ticket And Herbivore Safari Is In Cart
    When Cart Page Is Open
    Then I Should See The Prices Of My Cart Items

Valid Cart Prices Alert
    [Tags]    Henrik Bergman
    Given User Is Registered And Logged In
    And One Adult Ticket And Herbivore Safari Is In Cart
    When Cart Page Is Open
    And I Press Proceed To Checkout
    Then I Should See The Prices Of My Cart Items In An Alert
