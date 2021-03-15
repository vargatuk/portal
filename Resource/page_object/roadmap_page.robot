*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${roadmap_URL}    https://staging.prozorro.gov.ua/roadmap
${locator.roadmap}                    xpath=//footer[@class='bg_grey']



*** Keywords ***
Очікувваний результат Розвиток системи
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.roadmap}    timeout=20

Url страницы
    [RETURN]    ${roadmap_URL}