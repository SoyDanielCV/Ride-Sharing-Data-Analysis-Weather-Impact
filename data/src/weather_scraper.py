import requests
import pandas as pd
from bs4 import BeautifulSoup

url = "https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html"

response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

table = soup.find("table", attrs={"id": "weather_records"})
weather_records = pd.read_html(str(table))[0]

print(weather_records.head())
