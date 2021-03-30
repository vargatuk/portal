*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${fica_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.qualification.stand-still
${locator_fica}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Кваліфікація переможця (період оскарження) відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_fica}     timeout=20

Url страницы
    [RETURN]    ${fica_URL}