*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${aboveThresholdUA_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=aboveThresholdUA
${locator.aboveThresholdUA}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Відкриті торги на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.aboveThresholdUA}    timeout=20

Url страницы
    [RETURN]    ${aboveThresholdUA_URL}