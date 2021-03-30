*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${cancelled_URL}    https://staging.prozorro.gov.ua/search/tender?status=cancelled
${locator_cancelled}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Торги відмінено відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_cancelled}     timeout=20

Url страницы
    [RETURN]    ${cancelled_URL}