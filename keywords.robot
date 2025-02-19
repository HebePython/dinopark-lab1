*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary
Resource    login_function.robot
Variables    variables.py    

*** Keywords ***
# ------------------------
# Open Browser
# ------------------------
Open Browser To Incognito Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}    options=add_argument("--incognito")
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s

Open Browser To Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s

# ------------------------
# User Registration
# ------------------------
Register New User
    [Tags]   Sjubaib
    [Arguments]    ${username}    ${password}
    Click Navigation Element   ${register_navigation_Element}
    Type Text  ${username_input_id}    ${username}
    Type Text   ${password_input_id}    ${password}
    Click Submit Button    ${register_button}

Type Text
    [Tags]   Sjubaib
    [Arguments]    ${element}    ${text}
    Input Text    ${element}    ${text}

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

User Is Registered And Logged In    
    [Tags]   Henrik Bergman, Sjubaib
    [Arguments]    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
    Open Browser To Incognito Page    ${url}    ${browser}    ${title}
    Register New User   ${valid_username}   ${valid_password}
    Valid Login    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}


# ------------------------
# Tickets
# ------------------------
Navigate TO Buy Tickets Page
    [Tags]    Abdirahman Bayle
    [Arguments]    ${buy_tickets}    ${tickets_page}    
    Click Link     ${buy_tickets}    
    Wait Until Page Contains Element   ${tickets_page}    timeout= 10s
    
Choose Type, Category and Quantity
    [Tags]    Abdirahman Bayle
    [Arguments]    ${type_age}    ${type_category}    ${quantity}    ${quantity_num}    ${age}    ${ticket}
    Select From List By Value    ${type_age}    ${age}     
    Select From List By Value    ${type_category}    ${ticket}
    Input Text    ${quantity}    ${quantity_num}

Click Add To Cart
    [Tags]    Abdirahman Bayle
    [Arguments]    ${add_cart}    ${page_contains}
    Click Button    ${add_cart}
    Alert Text Should Be    Item added to cart!
   # Wait Until Page Contains    ${page_contains}
    
    
Regular Adult Ticket Is In Cart
    [Tags]    Henrik Bergman
    [Arguments]    ${buy_tickets}    ${tickets_page}    ${type_age}    ${type_category}    ${quantity}    ${add_cart}    ${page_contains}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page} 
    Choose Type, Category and Quantity    ${type_age}    ${type_category}    ${quantity}    1    Adult    Regular
    Click Add To Cart    ${add_cart}    ${page_contains}



# ------------------------
# Pick Date
# ------------------------

Weekday Is Selected In Calender
    [Tags]    Henrik Bergman
    [Arguments]    ${weekday_user_input}    ${date_input_element}
    Input Text    ${date_input_element}    ${weekday_user_input} 


# ------------------------
# Safari
# ------------------------
Safari Page Is Open
    [Tags]    Henrik Bergman
    [Arguments]    ${safari_header_link}    ${safari_page_section}
    Click Link    ${safari_header_link}
    Wait Until Element Is Visible    ${safari_page_section}

Herbivore Tour and T-Rex Rumble Safari Is Added To Cart
    [Tags]    Henrik Bergman
    [Arguments]    ${safari_dropdown_element}    ${submit_safari_button}    ${weekday_user_input}    ${date_input_element}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    Herbivore Tour
    Add Safari To Cart    ${submit_safari_button}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    T-Rex Rumble
    Add Safari To Cart    ${submit_safari_button}


Add Safari To Cart
    [Tags]    Henrik Bergman
    [Arguments]    ${submit_safari_button}
    Click Button    ${submit_safari_button}
    Alert Text Should Be    Item added to cart!


# ------------------------
# Checkout
# ------------------------
Checkout
    [Tags]    Henrik Bergman
    [Arguments]    ${checkout_header_link}   ${checkout_page_section}    ${checkout_total_cost_element}    ${total_value_cost}    ${checkout_submit_button}
    Click Link    ${checkout_header_link}   
    Wait Until Element Is Visible    ${checkout_page_section}
    Element Text Should Be    ${checkout_total_cost_element}    ${total_value_cost}
    Click Button    ${checkout_submit_button}
    Handle Alert

# ------------------------
# Handle Alerts 
# ------------------------
Alert Text Should Be
    [Tags]    Henrik Bergman
    [Arguments]    ${expected_alert_text}
    ${alert_text}=     Handle Alert
    Should Be Equal    ${alert_text}    ${expected_alert_text}