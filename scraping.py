# Import Splinter and BeautifulSoup
from splinter import Browser
from bs4 import BeautifulSoup as soup
from webdriver_manager.chrome import ChromeDriverManager
import pandas as pd

executable_path = {'executable_path': ChromeDriverManager().install()}
browser = Browser('chrome', **executable_path, headless=False)

# Visiting
url = 'http://www.caiso.com/TodaysOutlook/Pages/default.aspx'
browser.visit(url)

# Delay
browser.is_element_present_by_css('div.list_text', wait_time=1)

# Parse
html = browser.html
h_soup = soup(html, 'html.parser')

# Select Calender
csv_date = browser.find_by_tag('input')[1]
csv_date.click()
csv_date.fill('03/02/2022')

# Select download botton and download CSV
csv_data = browser.find_by_tag('button')[1]
csv_data.click()
