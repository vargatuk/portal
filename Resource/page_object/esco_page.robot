*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${esco_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=esco
${locator.esco}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Відкриті торги для закупівлі енергосервісу на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.esco}    timeout=20

Url страницы
    [RETURN]    ${esco_URL}