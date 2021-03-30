*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${reporting_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=esco
${locator.reporting}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Закупівля без використання електронної системи на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.reporting}    timeout=20

Url страницы
    [RETURN]    ${reporting_URL}