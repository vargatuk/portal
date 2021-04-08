*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${information_URL}    https://staging.prozorro.gov.ua/information-security
${locator.information}                    xpath=//h3[text ()= 'Інформаційна безпека']



*** Keywords ***
Очікувваний результат Інформаційна безпека на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.information}    timeout=20

Url страницы
    [RETURN]    ${information_URL}