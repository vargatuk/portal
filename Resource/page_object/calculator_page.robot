*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${cep_URL}    https://cep.kse.ua/gaz/
${locator.mdl-layout-spacer}                    xpath=//div[@class='mdl-layout-spacer']



*** Keywords ***
Очікувваний результат Калькулятор вартості газу на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.mdl-layout-spacer}    timeout=20

Url страницы
    [RETURN]    ${cep_URL}