*** Settings ***
Documentation    Robot lab 1, Grupp 1.     Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/keywords.robot
Test Setup   Open Browser To Page   ${url}  ${browser}   ${title}
Test Teardown    Close Browser


*** Test Cases ***