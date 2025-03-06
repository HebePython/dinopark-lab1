*** Settings ***
Documentation    Robot lab 1, keywords, Abdirahman Bayle, Sjubaib Rifai, Henrik Bergman
Library    SeleniumLibrary
Resource    login_function.robot
Variables    ${EXECDIR}/resources/util/variables.py   

*** Keywords ***
# ------------------------
# Open Browser
# ------------------------
Open Browser To Page
    [Tags]    Henrik Bergman
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Title Should Be    ${title}
    Sleep    3s

# ------------------------
# User Registration
# ------------------------
Register New User
    [Tags]   Sjubaib Rifai
    [Arguments]    ${username}    ${password}
    Click Link   ${register_navigation_Element}
    Input Text  ${username_input_id}    ${username}
    Input Text   ${password_input_id}    ${password}
    Click Button    ${register_button}
    
Message visibility and validation
   [Tags]   Sjubaib Rifai
   [Arguments]    ${message_Element}    ${messageText}    ${timeout}
   Wait Until Element Is Visible    ${message_Element}    ${timeout}
   Element Text Should Be    ${message_Element}    ${messageText}

User Is Registered And Logged In    
    [Tags]   Henrik Bergman, Sjubaib Rifai
    Register New User   ${valid_username}   ${valid_password}
    Open Login Section   ${login_header_button}    ${login_section}
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
    [Arguments]    ${add_cart} 
    Click Button    ${add_cart}
    Alert Text Should Be    Item added to cart!
    
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
    [Tags]    Henrik Bergman, Sjubaib_refactored
    Click Link    ${safari_header_link}
    Wait Until Element Is Visible    ${safari_page_section}


Safari Should Be Added to Cart
    [Tags]    Henrik Bergman, Sjubaib_refactored
    [Arguments]    ${submit_safari_button} 
    Click Button    ${submit_safari_button}
    Alert Text Should Be    Item added to cart!

# ------------------------
# Handle Alerts 
# ------------------------
Alert Text Should Be
    [Tags]    Henrik Bergman
    [Arguments]    ${expected_alert_text}
    ${alert_text}=     Handle Alert
    Should Be Equal    ${alert_text}    ${expected_alert_text}

# ------------------------
# Checkout
# ------------------------
Checkout Should Be Successful
    [Tags]    Henrik Bergman, Sjubaib_refactored
    [Arguments]    ${total_value_cost}
    Click Link    ${checkout_header_link}   
    Wait Until Element Is Visible    ${checkout_page_section}
    Element Text Should Be    ${checkout_total_cost_element}    ${total_value_cost}
    Click Button    ${checkout_submit_button}
    Handle Alert

User Sees Price
    [Tags]      Abdirahman Bayle
    [Arguments]    ${checkout_page_section}    ${checkout_total_cost_element}    ${total_value_cost}
    Wait Until Element Is Visible    ${checkout_page_section}
    Element Text Should Be    ${checkout_total_cost_element}    ${total_value_cost}

User Clicks Cart
    [Tags]     Abdirahman Bayle
    [Arguments]   ${checkout_header_link}
    Click Link    ${checkout_header_link}


