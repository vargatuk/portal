*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${documents_URL}    https://staging.prozorro.gov.ua/prozorro-documents
${locator.documents}                    xpath=//div[@class='tabs block_form_tabs']



*** Keywords ***
Очікувваний результат Документи ДП "ПРОЗОРРО"
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.documents}    timeout=20

Url страницы
    [RETURN]    ${documents_URL}