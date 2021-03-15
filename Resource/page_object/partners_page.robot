*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${majdanchiki_URL}    https://staging.prozorro.gov.ua/partners
${locator.majdanchiki}                    xpath=//div[@class='header mobile']



*** Keywords ***
Очікувваний результат Друзі Prozorro
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.majdanchiki}    timeout=20

Url страницы
    [RETURN]    ${majdanchiki_URL}