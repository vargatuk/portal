*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${MAIN_URL}    https://staging.prozorro.gov.ua/



*** Keywords ***
Вибір і перехід по верхньому меню
    [Documentation]    Вибір і перехід по верхньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']
    sleep    5

Вибір і перехід по нижньому меню
    [Documentation]    Вибір і перехід по нижньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']
    sleep    5

Вибір категорії закупівель
    [Documentation]    Вибір категорії закупівель
    [Arguments]   ${main_category_text}    ${children_category_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]
    Wait until element is visible    xpath=//p[@class='search-preview__item--text']    timeout=20
    ${count} =  Get Element Count   xpath=//p[@class='search-preview__item--text']
    log to console    .
    log to console    сколько категорий
    log to console    ${count}
    log to console    children
    log to console    ${children_category_text}
    FOR  ${index}  IN RANGE  ${count}
       ${filter_text}=    GET TEXT      xpath=(//p[@class='search-preview__item--text'])[${index+1}]
       Exit For Loop If    '${filter_text.split(' - ')[1]}' in '${children_category_text}'
    END
    Should Be True   '${filter_text.split(' - ')[-1]}' in '${children_category_text}'    msg='Після переходу на сторінку не співпадають вибрані назви'

Пошук статусу по назві
    [Documentation]    Пошук статусу по назві
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//label[@for='status']
    CLICK ELEMENT      xpath=//label[@for='status']
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']
    sleep    5

Пошук регіона по назві
    [Documentation]    Пошук регіона по назві
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//label[@for='region']
    CLICK ELEMENT      xpath=//label[@for='region']
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list']//li[text()='${locator_text}']
    sleep    5


Обрати закупівлю по типу
    [Documentation]    Обрати закупівлю по типу
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//label[@for='proc_type']
    CLICK ELEMENT      xpath=//label[@for='proc_type']
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']
    sleep    5



