*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${active_auction_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.auction
${locator_active_auction}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Аукціон відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_active_auction}     timeout=20

Url страницы
    [RETURN]    ${active_auction_URL}