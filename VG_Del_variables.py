import os

current_directory = os.getcwd().replace('\\', '/')

#browser
browser = "chrome"

# URL
url = f"file:///{current_directory}/webpages/jurap.html"

# Title of Page
title = "Jura-Stina-Kalle Park"

# Registration page Elements
register_link_element = '//*[@id="register-nav"]/a'

username_register_element = "id=reg-username"
password_register_element= "id=reg-password"
register_button = '//*[@id="register-form"]/button'

register_message_element = "id=register-message"
register_page_section = "id=register-section"

# Registration and Login status messages
registration_success_message = "Registration successful! Redirecting to login..."
error_existing_user_message = "Username already exists. Please choose another."
error_short_password_message = "Password must be at least 8 characters long."

error_invalid_login_message = "Invalid username or password."

# Valid user & password
valid_username = "Test"
valid_password = "12345678"

# Invalid Password
invalid_password = "InvalidPassword"

unregistered_username = "Unregistered"

# Short password registration
short_password_username = "ShortPassword"
short_password = "123"

# Login page elements
login_link_element = '//*[@id="login-nav"]/a'
username_login_element = "id=login-username"
password_login_element = "id=login-password"
login_button = '//*[@id="login-form"]/button'

login_message_element = "id=login-message"
login_page_section = "id=login-section"

