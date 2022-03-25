# Import Splinter and BeautifulSoup
from importlib.resources import path
from splinter import Browser
from bs4 import BeautifulSoup as soup
from webdriver_manager.chrome import ChromeDriverManager
import pandas as pd
import requests
from datetime import date, timedelta

executable_path = {'executable_path': ChromeDriverManager().install()}
browser = Browser('chrome', **executable_path, headless=False)

# Visiting
url = 'https://www.caiso.com/TodaysOutlook/Pages/supply.html'
browser.visit(url)
html_data = requests.get(url=url) \
    .content

start_date = date(2022,3,22)
end_date = date(2022,3,23)

# Define daterange for the for loop. (https://www.w3resource.com/python-exercises/date-time-exercise/python-date-time-exercise-50.php#:~:text)
def daterange(date1, date2):
    for n in range(int ((date2 - date1).days)+1):
        yield date1 + timedelta(n)

# Loop over the date range to perform the date's csv download.
for dt in daterange(start_date, end_date):

    #Convert date into a string for calendar fill variable
    data_dt = (dt.strftime('%m/%d/%Y'))
        
    # Delay
    browser.is_element_present_by_css('div.list_text', wait_time=1)

    # Parse
    html = browser.html
    h_soup = soup(html, 'html.parser')

    # Select Calender
    csv_date = browser.find_by_tag('input')[1]
    csv_date.click()
    csv_date.fill(data_dt)
    active_date = 'td[class="active day"]'
    browser.find_by_tag(active_date).click()

    # Select download button and download CSV
    csv_data = browser.find_by_tag('button')[2]
    csv_data.click()
    csv_data.find_by_xpath('//*[@id="downloadSupplyCSV"]').click()

# Quit the browser
browser.quit()

