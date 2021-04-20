*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${MAIN_URL}                        https://staging.prozorro.gov.ua/
${searh_tender_url}                https://staging.prozorro.gov.ua/search/tender?status=
${searh_region_url}                https://staging.prozorro.gov.ua/search/tender?region=
${locator.click_status}            xpath=//label[@for='status']
${locator.click_status_in_list}    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']
${locator.filter_content_text}     xpath=//p[@class='search-preview__item--text']
${locator.click_region}            xpath=//label[@for='region']
${locator.click_procurement_method_type}    xpath=//label[@for='proc_type']
${locator.click_procuringentity}    xpath=//label[@for='edrpou']
${locator.input_placeholder}        xpath=//input[@id='edrpou']
${locator.click_label}              xpath=//li[@class='filter-popup__preview-item']
${locator.heder_naw}                xpath=//nav[@class='desktop-nav']//a[text()='TMP_TEXT_LOCATOR']
${locator.result_status}                xpath=(//p[@class='search-result-card__label']//span)[1]
${locator.first_result_block}                xpath=(//div[@class='search-result-card__row'])[1]
${locator.body_menu}                xpath=//li[@class='page-footer__list-item']//a[text()='TMP_TEXT_LOCATOR']
${locator.status_menu}                xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='TMP_TEXT_LOCATOR']
${locator.region_menu}                xpath=//ul[@class='filter-popup__preview-list']//li[text()='TMP_TEXT_LOCATOR']
${locator.proc_type_menu}                xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='TMP_TEXT_LOCATOR']
${locator.main_category}                xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'TMP_TEXT_LOCATOR')]
${locator.children_category}                xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'TMP_TEXT_LOCATOR')]




*** Keywords ***
Вибір і перехід по верхньому меню
    [Documentation]    Вибір і перехід по верхньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${heder_naw}=    replace string    ${locator.heder_naw}     TMP_TEXT_LOCATOR    ${locator_text}
    log to console    .
    log to console    ${heder_naw}
    Wait until element is visible    ${heder_naw}    timeout=20
    CLICK ELEMENT      ${heder_naw}

Вибір і перехід по нижньому меню
    [Documentation]    Вибір і перехід по нижньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${body_menu}=    replace string    ${locator.body_menu}     TMP_TEXT_LOCATOR    ${locator_text}
    log to console    .
    log to console    ${body_menu}
    Wait until element is visible    ${body_menu}    timeout=20
    CLICK ELEMENT      ${body_menu}
    sleep    5

Вибір категорії закупівель
    [Documentation]    Вибір категорії закупівель
    [Arguments]   ${main_category_text}    ${children_category_text}
    GO TO   ${MAIN_URL}
    ${main_category}=    replace string    ${locator.main_category}     TMP_TEXT_LOCATOR    ${main_category_text}
    ${children_category}=    replace string    ${locator.children_category}     TMP_TEXT_LOCATOR    ${children_category_text}
    Wait until element is visible    ${locator.main_category}    timeout=20
    CLICK ELEMENT      ${locator.main_category}
    Wait until element is visible    ${locator.children_category}    timeout=20
    CLICK ELEMENT      ${locator.children_category}
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

Перехід на сторінку статусу по урлу
    [Documentation]    Передаємо відповідний статус і переходимо на сторінку по урлу
    [Arguments]    ${url_status}
    ${url_with_status}=    Catenate    SEPARATOR=    ${searh_tender_url}${url_status}
    Go To    ${url_with_status}
    [RETURN]    ${url_with_status}

Пошук статусу по назві вибираємо вручну
    [Documentation]    Пошук статусу по назві
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${status_menu}=    replace string    ${locator.status_menu}     TMP_TEXT_LOCATOR    ${locator_text}
    Wait until element is visible    ${locator.click_status}
    CLICK ELEMENT      ${locator.click_status}
    Wait until element is visible    ${status_menu}    timeout=20
    CLICK ELEMENT      ${status_menu}
    sleep    5

Порівняння тексту фільтра
    [Documentation]    В результаті відбувається перевірка тексту з фільтра.
    [Arguments]    ${exepted_text}
    Wait until element is visible    ${locator.filter_content_text}    timeout=20
    ${filter_text}=     Get text    ${locator.filter_content_text}
    Should Be Equal    first='${filter_text}'    second='${exepted_text}'   msg='При порівнянні текста фільтра виникла помилка, не відповідає фактичний результат очікуваному'


Порівняння тексту фільтра статусу з текстом першого результату видачі
    [Documentation]    В результаті відбувається порівняння з результатом видачі
    [Arguments]    ${exepted_text}
    Wait until element is visible    ${locator.first_result_block}    timeout=20
    ${filter_result}=     Get text    ${locator.result_status}
    Should Be Equal    first='${filter_result}'    second='${exepted_text}'   msg='При порівнянні текста фільтра виникла помилка, не відповідає фактичний результат очікуваному'


Пошук регіона по назві вибираємо вручну
    [Documentation]    Пошук регіона по назві вибираємо вручну та порівнюємо із заданим результатом
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${region_menu}=    replace string    ${locator.region_menu}     TMP_TEXT_LOCATOR    ${locator_text}
    Wait until element is visible    ${locator.click_region}
    CLICK ELEMENT      ${locator.click_region}
    Wait until element is visible    ${locator.region_menu}    timeout=20
    CLICK ELEMENT      ${locator.region_menu}
    sleep    5

#Перехід на сторінку регіона по урлу
#    [Documentation]    Передаємо відповідний регіон і переходимо на сторінку по урлу
#    [Arguments]    ${url_region}
#    ${url_with_region}=    Catenate    SEPARATOR=    ${searh_region_url}${url_region}
#    Go To    ${url_with_region}
#    [RETURN]    ${url_with_region}

Пошук типу закупівлі вибираємо вручну
    [Documentation]    Вибір виду закупівлі і порівняння з заданим результатом
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${proc_type_menu}=    replace string    ${locator.proc_type_menu}     TMP_TEXT_LOCATOR    ${locator_text}
    Wait until element is visible    ${locator.click_procurement_method_type}
    CLICK ELEMENT      ${locator.click_procurement_method_type}
    Wait until element is visible    ${locator.proc_type_menu}    timeout=20
    CLICK ELEMENT      ${locator.proc_type_menu}
    sleep    5

Пошук по назві замовника
    [Documentation]    Вибір та пошук замовника по коду ЄДРПОУ
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_procuringentity}
    CLICK ELEMENT      ${locator.click_procuringentity}
    input text    ${locator.input_placeholder}    Test Division Organization
    Wait until element is visible    ${locator.click_label}    timeout=20
    CLICK ELEMENT      ${locator.click_label}


