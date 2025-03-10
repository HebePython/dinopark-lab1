import os
from date_check import get_weekday, get_weekend
current_directory = os.getcwd().replace('\\', '/')

#browser
browser = "headlesschrome"

# URL
url = f"file:///{current_directory}/webpages/jurap.html"

# Title of Page
title = "Jura-Stina-Kalle Park"

# Registration navigation element
register_navigation_Element = '//*[@id="register-nav"]/a'

# User-registration page Elements
username_input_id = "id=reg-username"
password_input_id = "id=reg-password"
register_button = '//*[@id="register-form"]/button'

register_message = "id=register-message"

# Registration status messages
registration_success_message = "Registration successful! Redirecting to login..."

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

