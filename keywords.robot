*** Settings ***
Documentation    Robot lab 1, keywords
Library    SeleniumLibrary
Resource    login_function.robot
Variables    variables.py    

*** Keywords ***
# ------------------------
# Open Browser
# ------------------------
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
    [Arguments]    ${valid_username}    ${valid_password}    ${username_element}    ${password_element}    ${login_button}    ${home_page_section}
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
    
Regular Adult Ticket Is In Cart
    [Tags]    Henrik Bergman
    [Arguments]    ${buy_tickets}    ${tickets_page}    ${type_age}    ${type_category}    ${quantity}    ${add_cart}    ${page_contains}
    Navigate TO Buy Tickets Page    ${buy_tickets}    ${tickets_page} 
    Choose Type, Category and Quantity    ${type_age}    ${type_category}    ${quantity}    1    Adult    Regular
    Click Add To Cart    ${add_cart} 

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
    
# ------------------------
# Pick Date
# ------------------------

Weekday Is Selected In Calender
    [Tags]    Henrik Bergman
    [Arguments]    ${weekday_user_input}    ${date_input_element}
    Input Text    ${date_input_element}    ${weekday_user_input} 

User Selects a Weekend Day
    [Tags]    Sjubaib Rifai
    Input Text    ${date_input_element}    ${weekend_user_input} 
    

# ------------------------
# Safari
# ------------------------
Safari Page Is Open
    [Tags]    Henrik Bergman
    [Arguments]     ${safari_header_link}    ${safari_page_section}
    Click Link    ${safari_header_link}
    Wait Until Element Is Visible    ${safari_page_section}

Herbivore Tour and T-Rex Rumble Safari Is Added To Cart
    [Tags]    Henrik Bergman
    [Arguments]    ${safari_dropdown_element}    ${submit_safari_button}    ${weekday_user_input}    ${date_input_element}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    Herbivore Tour
    Safari Should Be Added to Cart   ${submit_safari_button}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    T-Rex Rumble
    Safari Should Be Added to Cart    ${submit_safari_button}

User Selects Herbivore Tour with Feeding
    [Tags]    Sjubaib Rifai
    Select From List By Value    ${safari_dropdown_element}   ${herbivore_tour_with_feeding_option}

Safari Should Be Added to Cart
    [Tags]    Henrik Bergman
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
    [Tags]    Henrik Bergman
    [Arguments]    ${checkout_header_link}   ${checkout_page_section}    ${checkout_total_cost_element}    ${total_value_cost}    ${checkout_submit_button}
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


# ------------------------
# Henrik VG Del
# ------------------------
Alert Text Should Contain
    [Tags]    Henrik Bergman VG
    [Arguments]    ${expected_alert_text}
    ${alert_text}=     Handle Alert
    Should Contain    ${alert_text}    ${expected_alert_text}

Alert Text Should Contain Multiple
    [Tags]    Henrik Bergman VG
    [Arguments]    
    ${alert_text}=     Handle Alert
    Should Contain    ${alert_text}    $50    
    Should Contain    ${alert_text}    $120
    Should Contain    ${alert_text}    $170   

# Tickets, 1 & 2

Ticket Page Is Open
    [Tags]    Henrik Bergman VG
    [Arguments]    ${ticket_navigation_link}    ${ticket_page_section}   
    Click Link    ${ticket_navigation_link}
    Element Should Be Visible    ${ticket_page_section}   

Select A Ticket
    [Tags]    Henrik Bergman VG
    [Arguments]    ${ticket_type_HB}    ${ticket_category_HB}    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB}
    Select From List By Value    ${ticket_type_list_element_HB}    ${ticket_type_HB}
    Select From List By Value    ${ticket_category_list_element_HB}    ${ticket_category_HB}
    Click Button    ${add_cart_button_HB}
    Alert Text Should Contain    Item added


I Can Add Adult, Senior And Child Regular Tickets To Cart As Both VIP And Regular
    [Tags]    Henrik Bergman VG
    [Documentation]    Verify that all combinations of ticket types and categories can be added to the cart.
    [Arguments]    ${ticket_type_HB}    ${ticket_category_HB}    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB} 
    FOR    ${tick_type}    IN    @{ticket_type_HB}
        FOR    ${tick_category}    IN    @{ticket_category_HB}
            Log    Adding ticket combination: ${ticket_type_HB} and ${ticket_category_HB}
            Select A Ticket     ${tick_type}    ${tick_category}    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB}
        END
    END  

I Cannot Buy Zero Or Negative Amount Of Tickets
    [Tags]    Henrik Bergman VG
    [Arguments]    ${ticket_input_list}    ${ticket_quantity_text_field}    ${add_cart_button_HB}    ${checkout_total_cost_element}
    FOR    ${quantity_input}    IN    ${ticket_input_list}
        Clear Element Text    ${ticket_quantity_text_field}
        Input Text    ${ticket_quantity_text_field}    ${quantity_input}
        Click Button    ${add_cart_button_HB}
        Cart Page Is Open    ${cart_navigation_link}    ${cart_section_element}
        Total Cost Should Be Zero    ${checkout_total_cost_element}    Total: $0
  
    END

Total Cost Should Be Zero
    [Tags]    Henrik Bergman VG
    [Arguments]    ${checkout_total_cost_element}    ${amount_text}
    Element Text Should Be    ${checkout_total_cost_element}    ${amount_text}
    


# CART & CHECKOUT 3 & 4

Select Herbivore Safari
    [Tags]    Henrik Bergman VG
    [Arguments]    ${weekday_user_input}    ${weekday_user_input}    ${date_input_element}    ${safari_dropdown_element}    ${submit_safari_button}
    Safari Page Is Open    ${safari_header_link}    ${safari_page_section}
    Weekday Is Selected In Calender    ${weekday_user_input}    ${date_input_element}
    Select From List By Label    ${safari_dropdown_element}    Herbivore Tour
    Safari Should Be Added to Cart   ${submit_safari_button}

Cart Page Is Open
    [Tags]    Henrik Bergman VG
    [Arguments]     ${cart_navigation_link}    ${cart_section_element}
    Click Link    ${cart_navigation_link}
    Element Should Be Visible    ${cart_section_element}

Check Cart Items Price
    [Tags]    Henrik Bergman VG
    [Arguments]
    FOR    ${list_item}    IN    ${checkout_cart_list_element}
        ${price_listed}=    Get Text    ${list_item}
        Should Contain    ${price_listed}    $50
    END


I Should See The Prices Of My Cart Items
    [Tags]    Henrik Bergman VG
    [Arguments]    ${checkout_cart_list_element}
    ${text_item}=      Get Text    ${checkout_cart_list_element}
    Should Contain    ${text_item}    $50
    Should Contain    ${text_item}   $120

One Adult Ticket And Herbivore Safari Is Added To Cart
    [Tags]    Henrik Bergman VG
    [Arguments]    ${ticket_navigation_link}    ${ticket_page_section}    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB}    ${weekday_user_input}    ${weekday_user_input}    ${date_input_element}    ${safari_dropdown_element}    ${submit_safari_button}   
    Ticket Page Is Open    ${ticket_navigation_link}    ${ticket_page_section}   
    Select A Ticket    Adult    Regular    ${ticket_type_list_element_HB}    ${ticket_category_list_element_HB}    ${add_cart_button_HB}
    Select Herbivore Safari    ${weekday_user_input}    ${weekday_user_input}    ${date_input_element}    ${safari_dropdown_element}    ${submit_safari_button}

Press Proceed to Checkout
    [Tags]    Henrik Bergman VG
    [Arguments]    ${checkout_submit_button}
    Click Button    ${checkout_submit_button}

I Should See The Prices Of My Cart Items In An Alert
    [Tags]    Henrik Bergman VG
    [Arguments]
    Alert Text Should Contain Multiple