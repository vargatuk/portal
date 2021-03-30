*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${region_URL}    https://staging.prozorro.gov.ua/search/tender?region
${locator.region}                    xpath=//li[@class='filter-popup__preview-item']



*** Keywords ***
Очікувваний результат місто Севастополь відображається на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.region}    timeout=20

Url страницы
    [RETURN]    ${region_URL}