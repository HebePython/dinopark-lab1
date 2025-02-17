import os

current_directory = os.getcwd().replace('\\', '/')

#browser
browser = "chrome"

# URLS
url = f"file:///{current_directory}/new_website/jurap.html"


title = "Jura-Stina-Kalle Park"


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