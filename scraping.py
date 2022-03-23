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

html = browser.html
news_soup = soup(html, 'html.parser')

# Parse
html = browser.html
h_soup = soup(html, 'html.parser')

# Select download botton and download CSV
csv_data = browser.find_by_tag('button')[1]
csv_data.click()
