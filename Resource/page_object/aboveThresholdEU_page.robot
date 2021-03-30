*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${aboveThresholdEU_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=aboveThresholdEU
${locator.aboveThresholdEU}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Відкриті торги з публікацією англійською мовою на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.aboveThresholdEU}    timeout=20

Url страницы
    [RETURN]    ${aboveThresholdEU_URL}