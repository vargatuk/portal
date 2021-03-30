*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${complete_URL}    https://staging.prozorro.gov.ua/search/tender?status=complete
${locator_complete}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Завершена відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_complete}     timeout=20

Url страницы
    [RETURN]    ${complete_URL}