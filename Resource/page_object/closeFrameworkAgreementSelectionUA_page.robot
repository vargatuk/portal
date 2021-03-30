*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${closeFrameworkAgreementSelectionUA_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=closeFrameworkAgreementSelectionUA
${locator_closeFrameworkAgreementSelectionUA}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Відбір для закупівлі за рамковою угодою на сторінці відображається
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator_closeFrameworkAgreementSelectionUA}    timeout=20

Url страницы
    [RETURN]    ${closeFrameworkAgreementSelectionUA_URL}