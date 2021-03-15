*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${majdanchiki_URL}    https://staging.prozorro.gov.ua/majdanchiki-prozorro
${locator.majdanchiki}                    xpath=//footer[@class='bg_grey']



*** Keywords ***
Очікувваний результат Майданчики Prozorro
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.majdanchiki}    timeout=20

Url страницы
    [RETURN]    ${majdanchiki_URL}