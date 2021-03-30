*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${enquiries_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.enquiries
${locator_enquiries}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Період уточнень відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_enquiries}    timeout=20

Url страницы
    [RETURN]    ${enquiries_URL}