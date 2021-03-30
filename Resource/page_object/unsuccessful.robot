*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${unsuccessful_URL}    https://staging.prozorro.gov.ua/search/tender?status=unsuccessful
${locator_unsuccessful}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Торги не відбулися відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_unsuccessful}     timeout=20

Url страницы
    [RETURN]    ${unsuccessful_URL}