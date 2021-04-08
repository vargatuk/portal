*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${submit_URL}    https://staging.prozorro.gov.ua/submit-an-official-letter-with-EDS
${locator.submit}                    xpath=//div[@class='container inline-layout col-3']



*** Keywords ***
Очікувваний результат Подати офіційний лист з ЕЦП
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.submit}    timeout=20

Url страницы
    [RETURN]    ${submit_URL}