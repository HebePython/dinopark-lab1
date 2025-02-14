import os
from date_check import get_weekday, get_weekend
current_directory = os.getcwd().replace('\\', '/')

#browser
browser = "chrome"

# URL
url = f"file:///{current_directory}/webpages/jurap.html"

# Title of Page
title = "Jura-Stina-Kalle Park"

#region Login page elements

#valid user & password

valid_username = "test1"
valid_password = "123123123"

# Login page elements

username_element = "id=login-username"
password_element = "id=login-password"

login_button = "xpath=//button[text()='Login']"

login_message = "id=login-message"

# Main Page elements
home_page_section = "id=home-section"

# Header elements
login_header_button = "xpath=//a[@data-section='login-section']"

#endregion

#region Safari Booking & Calender elements

# Calender elements
weekday_user_input = get_weekday()

date_input_element = "id=safari-date"

weekend_user_input = get_weekend()


# Safari page elements
safari_page_section = "id=safari-section"

safari_header_link = 'xpath=//*[@id="safari-nav"]/a'



#endregion

