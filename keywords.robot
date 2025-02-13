*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    5s
Type In Element
   [Tags]   Sjubaib
   [Arguments]   ${id_element}   ${text_to_write}
   Input Text   ${id_element}   ${text_to_write}
Click Submit Button
   [Tags]   Sjubaib
   [Arguments]  ${Submit_Button_to_click}  
   Click Button   ${Submit_Button_to_click}
Click Navigation Element
   [Tags]   Sjubaib
   [Arguments]   ${Element_to_click}
   Click Element   ${Element_to_click}
Message visibility and validation
   [Tags]   Sjubaib
   [Arguments]    ${message_Element}    ${messageText}    ${timeout}
   Wait Until Element Is Visible    ${message_Element}    ${timeout}
   Element Text Should Be    ${message_Element}    ${messageText}