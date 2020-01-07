import requests
from bs4 import BeautifulSoup
page = requests.get("https://www.myhome.ie/residential/kerry/property-for-sale?page=1")

soup = BeautifulSoup(page.content, 'html.parser')

listings = soup.findAll("div", class_="PropertyListingCard")

print(listings)