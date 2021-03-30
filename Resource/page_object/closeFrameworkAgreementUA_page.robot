*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${closeFrameworkAgreementUA_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=closeFrameworkAgreementUA
${locator_closeFrameworkAgreementUA}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Укладання рамкової угоди на сторінці відображається
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator_closeFrameworkAgreementUA}    timeout=20

Url страницы
    [RETURN]    ${closeFrameworkAgreementUA_URL}