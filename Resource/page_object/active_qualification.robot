*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${cation_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.qualification
${locator_cation}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Кваліфікація переможця відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_cation}     timeout=20

Url страницы
    [RETURN]    ${cation_URL}