*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/body_menu/about_page.robot
Resource   ../page_object/body_menu/bugbounty_page.robot
Resource   ../page_object/body_menu/information_security_page.robot
Resource   ../page_object/body_menu/documents_page.robot
Resource   ../page_object/body_menu/submit_page.robot
Resource   ../page_object/body_menu/roadmap_page.robot
Resource   ../page_object/body_menu/majdanchiki_page.robot
Resource   ../page_object/body_menu/partners_page.robot
Resource   ../page_object/body_menu/organizaciya_page.robot
Resource   ../page_object/body_menu/monitoring_page.robot
Resource   ../page_object/body_menu/openprocurement_page.robot
Resource   ../page_object/body_menu/for_places.page.robot
Resource   ../page_object/body_menu/zahist_page.robot
Resource   ../page_object/body_menu/faq_page.robot


Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***

Перейти на вкладку Про нас
    Вибір і перехід по нижньому меню    Про нас
    [Documentation]    Перейти на вкладку Про нас
    [Tags]    body_menu
    Перевірка сторінки після переходу    about    msg='некоректне посилання'
    Очікувваний результат Про нас на сторінці

Перейти на вкладку Bug bounty
    Вибір і перехід по нижньому меню    Bug bounty
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    body_menu
    Перевірка сторінки після переходу    bugbounty    msg='некоректне посилання'
    Очікувваний результат Bug bounty на сторінці


Перейти на вкладку Інформаційна безпека
    Вибір і перехід по нижньому меню    Інформаційна безпека
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    body_menu
    Перевірка сторінки після переходу    information-security    msg='некоректне посилання'
    Очікувваний результат Інформаційна безпека на сторінці

Перейти на вкладку Документи ДП "ПРОЗОРРО"
    Вибір і перехід по нижньому меню    Документи ДП "ПРОЗОРРО"
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    body_menu
    Перевірка сторінки після переходу    prozorro-documents    msg='некоректне посилання'
    Очікувваний результат Документи ДП "ПРОЗОРРО"

Перейти на вкладку Подати офіційний лист з ЕЦП
    Вибір і перехід по нижньому меню    Подати офіційний лист з ЕЦП
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    body_menu
    Перевірка сторінки після переходу    submit    msg='некоректне посилання'
    Очікувваний результат Подати офіційний лист з ЕЦП

Перейти на вкладку Розвиток системи
    Вибір і перехід по нижньому меню    Розвиток системи
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    body_menu
    Перевірка сторінки після переходу    roadmap    msg='некоректне посилання'
    Очікувваний результат Розвиток системи

Перейти на вкладку Майданчики Prozorro
    Вибір і перехід по нижньому меню    Майданчики Prozorro
    [Documentation]    Перейти на вкладку Майданчики Prozorro
    [Tags]    body_menu
    Перевірка сторінки після переходу    majdanchiki    msg='некоректне посилання'
    Очікувваний результат Майданчики Prozorro

Перейти на вкладку Дозорро
    Вибір і перехід по нижньому меню    Дозорро

Перейти на вкладку Друзі Prozorro
    Вибір і перехід по нижньому меню    Друзі Prozorro
    [Documentation]    Перейти на вкладку Друзі Prozorro
    [Tags]    body_menu
    Перевірка сторінки після переходу    partners    msg='некоректне посилання'
    Очікувваний результат Друзі Prozorro

Перейти на вкладку Prozorro Market інструмент ЦЗО
    Вибір і перехід по нижньому меню    Prozorro Market інструмент ЦЗО
    [Documentation]    Перейти на вкладку Prozorro Market інструмент ЦЗО
    [Tags]    body_menu
    Перевірка сторінки після переходу    organizaciya    msg='некоректне посилання'
    Очікувваний результат Prozorro Market інструмент ЦЗО

Перейти на вкладку Митці
    Вибір і перехід по нижньому меню    Митці

Перейти на вкладку Моніторинг
    Вибір і перехід по нижньому меню    Моніторинг
    [Documentation]    Перейти на вкладку Моніторинг
    [Tags]    body_menu
    Перевірка сторінки після переходу    monitoring    msg='некоректне посилання'
    Очікувваний результат Моніторинг

Перейти на вкладку Розробникам
    Вибір і перехід по нижньому меню    Розробникам
    [Documentation]    Перейти на вкладку Розробникам
    [Tags]    body_menu
    Перевірка сторінки після переходу    openprocurement    msg='некоректне посилання'
    Очікувваний результат Розробникам

Перейти на вкладку Майданчикам
    Вибір і перехід по нижньому меню    Майданчикам
    [Documentation]    Перейти на вкладку Майданчикам
    [Tags]    body_menu
    Перевірка сторінки після переходу    places    msg='некоректне посилання'
    Очікувваний результат Майданчикам

Перейти на вкладку Захист учасників
    Вибір і перехід по нижньому меню    Захист учасників
    [Documentation]    Перейти на вкладку Захист учасників
    [Tags]    body_menu
    Перевірка сторінки після переходу    zahist    msg='некоректне посилання'
    Очікувваний результат Захист учасників

Перейти на вкладку Запитання та відповіді
    Вибір і перехід по нижньому меню    Запитання та відповіді
    [Documentation]    Перейти на вкладку Запитання та відповіді
    [Tags]    body_menu
    Перевірка сторінки після переходу    faq    msg='некоректне посилання'
    Очікувваний результат Запитання та відповіді