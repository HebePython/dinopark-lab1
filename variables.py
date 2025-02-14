import os

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

# Valid user credentials for registration
new_user_username = "test1"
new_user_password = "123123123"

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










