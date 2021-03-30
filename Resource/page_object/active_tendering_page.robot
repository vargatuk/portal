*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${tendering_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.tendering
${locator_tendering}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Подання пропозицій відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_tendering}    timeout=20

Url страницы
    [RETURN]    ${tendering_URL}