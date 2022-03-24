import pandas as pd
import datetime
from datetime import date, timedelta

#create a range of dates for downloading the data (https://stackoverflow.com/questions/1060279/iterating-through-a-range-of-dates-in-python)
def daterange(start_date,end_date):
    for n in range((end_date - start_date).days):
        yield start_date + timedelta(n)

start_date = date(2021,12,1)
end_date = date(2022,1,1)
for input_date in daterange(start_date,end_date):
    #Convert date into correct format and string for input on calendar
    String = (input_date.strftime('%m/%d/%Y'))
    
    print(String)




