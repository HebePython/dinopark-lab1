*** Settings ***
Documentation    VG Del Henrik Bergman, Grupp 1. Features: Olika biljett typer & Checkout process priser.
Library    SeleniumLibrary
Resource    keywords.robot
Test Teardown    Close Browser


*** Test Cases ***
Check ticket types
    Given User Is Registered And Not Logged In
    And Ticket Page Is Open
    When Tickets Are Added To Cart
    And I Open Checkout Page
    Then I Cannot Buy Tickets

Check Ticket Types
    Given User Is Registered And Logged In
    And Ticket Page Is Open
    When TIckets Are Added To Cart
    And I Open Checkout Page
    Then I Can Buy Tickets



