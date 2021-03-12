*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${PROZORROMARKET_URL}    https://staging.prozorro.gov.ua/ProzorroMarket
${locator.container error404}                    xpath=//div[@class='container error404']



*** Keywords ***
Очікувваний результат Prozorro Market на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.container error404}    timeout=20

Url страницы
    [RETURN]    ${PROZORROMARKET_URL}