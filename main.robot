*** Settings ***
Documentation    Robot lab 1
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page
Test Teardown    Close Browser


*** Test Cases ***


