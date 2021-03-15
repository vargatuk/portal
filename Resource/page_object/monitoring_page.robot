*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${monitoring_URL}    https://staging.prozorro.gov.ua/monitoring
${locator.monitoring}                    xpath=//div[@class='container']



*** Keywords ***
Очікувваний результат Моніторинг
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.monitoring}    timeout=20

Url страницы
    [RETURN]    ${monitoring_URL}