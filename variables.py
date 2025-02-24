import os
from date_check import get_weekday, get_weekend
current_directory = os.getcwd().replace('\\', '/')

#browser
browser = "chrome"

# URL
url = f"file:///{current_directory}/webpages/jurap.html"

# Title of Page
title = "Jura-Stina-Kalle Park"

# Registration navigation element
register_navigation_Element = '//*[@id="register-nav"]'

# User-registration page Elements
username_input_id = "id=reg-username"
password_input_id = "id=reg-password"
register_button = '//*[@id="register-form"]/button'

register_message = "id=register-message"

# Empty registration fields  
empty_username = " "  
empty_password = " " 

# Too short password registration
short_password_username = "TooShortPasswordUser"
short_password = "123"

# Registration status messages
registration_success_message = "Registration successful! Redirecting to login..."
error_existing_user_message = "Username already exists. Please choose another."
error_empty_fields_message = "Please enter both a username and password."
error_short_password_message = "Password must be at least 8 characters long."

#region Login page elements

#valid user & password

valid_username = "test1"
valid_password = "123123123"

# Login page elements

username_element = "id=login-username"
password_element = "id=login-password"

login_button = "xpath=//button[text()='Login']"

login_message = "id=login-message"

login_section = "id=login-section"

# Main Page elements
home_page_section = "id=home-section"

# Header elements
login_header_button = "xpath=//a[@data-section='login-section']"

#Ticket page
tickets_page = "id=ticket-form"
#Ticket form
buy_tickets = "Buy Tickets"

#Ticket List
type_age = "id=ticket-type"
type_category = "id=ticket-category"

#Qantity
quantity = "id=ticket-quantity"

# Add to cart button
Add_cart = "Add to Cart"

# Tickets confirmed
page_contains = "Tickets added to cart"


#endregion

#region Safari Booking & Calender elements

# Calender elements
weekday_user_input = get_weekday()

date_input_element = "id=safari-date"

weekend_user_input = get_weekend()


# Safari page elements
safari_page_section = "id=safari-section"

safari_header_link = 'xpath=//*[@id="safari-nav"]/a'

safari_dropdown_element = "id=safari-type"

herbivore_tour_option = 'Herbivore Tour'

herbivore_tour_with_feeding_option = "Herbivore Tour with Feeding"

submit_safari_button = 'xpath=//*[@id="safari-form"]/button'
#endregion



# Checkout page

checkout_header_link = 'xpath=//*[@id="cart-nav"]/a'

checkout_page_section = "id=cart-section"

checkout_total_cost_element = "id=cart-total"

checkout_submit_button = "id=checkout-button"

checkout_item_list = "id=cart-details"



# Henrik VG Variabler  -----------------


# Checkout & Cart

cart_navigation_link = 'xpath=/html/body/header/div/nav/ul/li[6]/a'
cart_section_element = "id=cart-section"

checkout_cart_list_element = "id=cart-details"

#Tickets

ticket_type_HB = ["Adult", "Senior", "Child"]
ticket_category_HB = ["Regular", "VIP"]
ticket_type_list_element_HB = "id=ticket-type"
ticket_category_list_element_HB = "id=ticket-category"
add_cart_button_HB = "xpath=/html/body/main/article[4]/section/form/button"
ticket_page_section = "id=ticket-form"
ticket_navigation_link = 'xpath=/html/body/header/div/nav/ul/li[4]/a'

ticket_quantity_text_field = "id=ticket-quantity"
ticket_input_list = ["0", "-200", "-1", "-10000000"]

# 