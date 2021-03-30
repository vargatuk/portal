*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${awarded_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.awarded
${locator_awarded}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Пропозиції роглянуті відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_awarded}     timeout=20

Url страницы
    [RETURN]    ${awarded_URL}