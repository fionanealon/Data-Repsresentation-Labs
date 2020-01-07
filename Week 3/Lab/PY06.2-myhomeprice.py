import requests
import csv
from bs4 import BeautifulSoup
page = requests.get("https://www.myhome.ie/residential/kerry/property-for-sale?page=1")

soup = BeautifulSoup(page.content, 'html.parser')

listings = soup.findAll("div", class_="PropertyListingCard")

for listing in listings:
    price = []

    price1 = listing.find(class_="PropertyListingCard__Price").text
    price.append(price1)

    print(price)