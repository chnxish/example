from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

def main():
    chrome_options = Options()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--disable-gpu')
    # if the following code is used
    # driver = webdriver.Chrome(chrome_options=chrome_options)
    # the program will report an error
    # selenium.common.exceptions.WebDriverException: Message: 'chromedriver' executable needs to be in PATH.
    driver = webdriver.Chrome(executable_path=ChromeDriverManager().install(), chrome_options=chrome_options)
    driver.get('https://www.baidu.com')
    print(driver.page_source)
    driver.close()

if __name__ == '__main__':
    main()
