*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${MAIN_URL}                        https://staging.prozorro.gov.ua/
${searh_tender_url}                https://staging.prozorro.gov.ua/search/tender?status=
${searh_region_url}                https://staging.prozorro.gov.ua/search/tender?region=
${locator.click_status}            xpath=//label[@for='status']
${locator.click_status_in_list}    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']
${locator.filter_content_text}     xpath=//p[@class='search-preview__text']
${locator.click_region}            xpath=//label[@for='region']
${locator.click_procurement_method_type}    xpath=//label[@for='proc_type']
${locator.click_procuringentity}    xpath=//label[@for='edrpou']
${locator.input_placeholder}        xpath=//input[@id='edrpou']
${locator.click_label}              xpath=//li[@class='filter-popup__preview-item']
${locator.heder_naw}                xpath=//nav[@class='page-header__nav']//a[contains(text(), 'TMP_TEXT_LOCATOR')]
${locator.result_status}                xpath=(//p[@class='search-result-card__label']//span)[1]
${locator.first_result_block}                xpath=(//div[@class='search-result-card__row'])[1]
${locator.body_menu}                xpath=//span[@class='link__wrapper']//a[contains(text(), 'TMP_TEXT_LOCATOR')]
${locator.status_menu}                xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='TMP_TEXT_LOCATOR']
${locator.region_menu}                xpath=//div[@class = 'filter-popup__preview']//li[contains(text(), 'TMP_TEXT_LOCATOR')]
${locator.proc_type_menu}                xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='TMP_TEXT_LOCATOR']
${locator.main_category}                xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'TMP_TEXT_LOCATOR')]
${locator.children_category}                xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'TMP_TEXT_LOCATOR')]
${locator.suppliers}                xpath=//li[@class='first-steps-info__list-item']//a[contains(text(), 'Постачальникам')]
${locator.customers}                xpath=//a[@class='first-steps-info__item-link first-steps-info__item-link_2']
${locator.monitoring}                xpath=//a[@class='first-steps-info__item-link first-steps-info__item-link_3']
${locator.majdanchiki_prozorro}                xpath=//a[@class='btn btn_main-bordered']
${locator.placeholder}                xpath=//form[@class='search-text']






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
    Wait until element is visible    ${body_menu}    timeout=20
    CLICK ELEMENT      ${body_menu}
    sleep    5

Вибір категорії закупівель
    [Documentation]    Вибір категорії закупівель
    [Arguments]   ${main_category_text}    ${children_category_text}    ${search_result_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]
    Wait until element is visible    xpath=//p[@class='search-preview__text']    timeout=20
    ${count} =  Get Element Count   xpath=//p[@class='search-preview__text']
    FOR  ${index}  IN RANGE  ${count}
       ${filter_text}=    GET TEXT      xpath=(//p[@class='search-preview__text'])[${index+1}]
       Exit For Loop If    '${search_result_text}' in '${filter_text}'
    END
    Should Be True   '${search_result_text}' in '${filter_text}'    msg='Після переходу на сторінку не співпадають вибрані назви'

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
    log to console    ${region_menu}
    Wait until element is visible    ${locator.click_region}
    CLICK ELEMENT    ${locator.click_region}
    Wait until element is visible    ${region_menu}    timeout=5
    CLICK ELEMENT      ${region_menu}

Перехід на сторінку регіона по урлу
    [Documentation]    Передаємо відповідний регіон і переходимо на сторінку по урлу
    [Arguments]    ${url_region}
    ${url_with_region}=    Catenate    SEPARATOR=    ${searh_region_url}${url_region}
    Go To    ${url_with_region}
    [RETURN]    ${url_with_region}

Пошук типу закупівлі вибираємо вручну
    [Documentation]    Вибір виду закупівлі і порівняння з заданим результатом
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    ${proc_type_menu}=    replace string    ${locator.proc_type_menu}     TMP_TEXT_LOCATOR    ${locator_text}
    Wait until element is visible    ${locator.click_procurement_method_type}
    CLICK ELEMENT      ${locator.click_procurement_method_type}
    Wait until element is visible    ${proc_type_menu}    timeout=20
    CLICK ELEMENT      ${proc_type_menu}
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

Перехід на сторінку для постачальника
    [Documentation]    Перехід на сторінку для постачальника
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.suppliers}    timeout=20
    CLICK ELEMENT      ${locator.suppliers}

Перехід на сторінку для замовника
    [Documentation]    Перехід на сторінку для замовника
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.customers}    timeout=20
    CLICK ELEMENT      ${locator.customers}

Перехід на сторінку для Громадськості
    [Documentation]    Перехід на сторінку для Громадськості
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.monitoring}    timeout=20
    CLICK ELEMENT      ${locator.monitoring}

Перехід на сторінку Майданчики Prozorro
    [Documentation]    Перехід на сторінку Майданчики Prozorro
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.majdanchiki_prozorro}    timeout=20
    CLICK ELEMENT      ${locator.majdanchiki_prozorro}

Перевірка наявності критеріїв у тендері
    [Documentation]    Перевірка наявності критеріїв у тендері
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_procurement_method_type}    timeout=20
    CLICK ELEMENT      ${locator.click_procurement_method_type}
    Wait until element is visible    ${locator.click_procurement_method_type}    timeout=20
    CLICK ELEMENT      ${locator.click_procurement_method_type}
    Wait until element is visible    ${locator.placeholder}    timeout=20
    CLICK ELEMENT      ${locator.placeholder}