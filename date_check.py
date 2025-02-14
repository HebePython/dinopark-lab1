from datetime import date, timedelta

# Disclaimer, these have been prompted using Copilot AI.

def get_weekday():
    """
    Check if today's date is a weekday.
    If it is, return today's date in "mm/dd/yyyy" format.
    If not, return the next available weekday in the same format.
    """
    today = date.today()
    if today.weekday() < 5:
        next_weekday = today
    else:
        # Saturday (5) -> add 2 days, Sunday (6) -> add 1 day.
        days_to_add = 7 - today.weekday()
        next_weekday = today + timedelta(days=days_to_add)
    return next_weekday.strftime("%m/%d/%Y")

def get_weekend():

    today=date.today()

    if today.weekday() >= 5:
        weekend_day = today
    else:
        days_to_add = 5 - today.weekday()
        weekend_day = today + timedelta(days=days_to_add)
    return weekend_day.strftime("%m/%d/%Y")


