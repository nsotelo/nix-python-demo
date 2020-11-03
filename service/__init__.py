import requests
import bs4
import os
import json

BASE_DIR = os.getcwd()
CONFIG_PATH = os.path.join(BASE_DIR, "./configuration.json")


def main():
    with open(CONFIG_PATH) as f:
        config = json.load(f)
    response = requests.get("https://example.com")
    soup = bs4.BeautifulSoup(response.text, "html.parser")
    print(soup.title)
    print(config["message"])
