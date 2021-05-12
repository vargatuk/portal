*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${NEWS_PAGE_URL}    https://staging.prozorro.gov.ua/news
${locator.title}                    xpath=//nav[@class='page-header__nav']



*** Keywords ***
Очікувваний результат Новин на сторінці
    [Documentation]    Перевіряємо наявність новин на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${NEWS_PAGE_URL}