*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/news_page.robot
Resource   ../page_object/about_page.robot                              #Про нас
Resource   ../page_object/bugbounty_page.robot                          #Bug bounty
Resource   ../page_object/information_security_page.robot               #Інформаційна безпека
Resource   ../page_object/documents_page.robot                          #Документи ДП "ПРОЗОРРО"
Resource   ../page_object/submit_page.robot                             #Подати офіційний лист з ЕЦП
Resource   ../page_object/roadmap_page.robot                            #Розвиток системи
Resource   ../page_object/majdanchiki_page.robot                        #Майданчики Prozorro
Resource   ../page_object/partners_page.robot                           #Друзі Prozorro
Resource   ../page_object/organizaciya_page.robot                       #Prozorro Market інструмент ЦЗО
Resource   ../page_object/monitoring_page.robot                         #Моніторинг
Resource   ../page_object/openprocurement_page.robot                    #Розробникам
Resource   ../page_object/for_places.page.robot                         #Майданчикам
Resource   ../page_object/zahist_page.robot                             #Захист учасників
Resource   ../page_object/faq_page.robot                                #Запитання та відповіді


Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***

Перейти на вкладку Про нас
    Вибір і перехід по нижньому меню    Про нас
    Перевірка сторінки після переходу    about    msg='некоректне посилання'
    Очікувваний результат Про нас на сторінці

Перейти на вкладку Bug bounty
    Вибір і перехід по нижньому меню    Bug bounty
    Перевірка сторінки після переходу    bugbounty    msg='некоректне посилання'
    Очікувваний результат Bug bounty на сторінці


Перейти на вкладку Інформаційна безпека
    Вибір і перехід по нижньому меню    Інформаційна безпека
    Перевірка сторінки після переходу    information-security    msg='некоректне посилання'
    Очікувваний результат Інформаційна безпека на сторінці

Перейти на вкладку Документи ДП "ПРОЗОРРО"
    Вибір і перехід по нижньому меню    Документи ДП "ПРОЗОРРО"
    Перевірка сторінки після переходу    prozorro-documents    msg='некоректне посилання'
    Очікувваний результат Документи ДП "ПРОЗОРРО"

Перейти на вкладку Подати офіційний лист з ЕЦП
    Вибір і перехід по нижньому меню    Подати офіційний лист з ЕЦП
    Перевірка сторінки після переходу    submit    msg='некоректне посилання'
    Очікувваний результат Подати офіційний лист з ЕЦП

Перейти на вкладку Розвиток системи
    Вибір і перехід по нижньому меню    Розвиток системи
    Перевірка сторінки після переходу    roadmap    msg='некоректне посилання'
    Очікувваний результат Розвиток системи

Перейти на вкладку Майданчики Prozorro
    Вибір і перехід по нижньому меню    Майданчики Prozorro
    Перевірка сторінки після переходу    majdanchiki    msg='некоректне посилання'
    Очікувваний результат Майданчики Prozorro

Перейти на вкладку Дозорро
    Вибір і перехід по нижньому меню    Дозорро

Перейти на вкладку Друзі Prozorro
    Вибір і перехід по нижньому меню    Друзі Prozorro
    Перевірка сторінки після переходу    partners    msg='некоректне посилання'
    Очікувваний результат Друзі Prozorro

Перейти на вкладку Prozorro Market інструмент ЦЗО
    Вибір і перехід по нижньому меню    Prozorro Market інструмент ЦЗО
    Перевірка сторінки після переходу    organizaciya    msg='некоректне посилання'
    Очікувваний результат Prozorro Market інструмент ЦЗО

Перейти на вкладку Митці
    Вибір і перехід по нижньому меню    Митці

Перейти на вкладку Моніторинг
    Вибір і перехід по нижньому меню    Моніторинг
    Перевірка сторінки після переходу    monitoring    msg='некоректне посилання'
    Очікувваний результат Моніторинг

Перейти на вкладку Розробникам
    Вибір і перехід по нижньому меню    Розробникам
    Перевірка сторінки після переходу    openprocurement    msg='некоректне посилання'
    Очікувваний результат Розробникам

Перейти на вкладку Майданчикам
    Вибір і перехід по нижньому меню    Майданчикам
    Перевірка сторінки після переходу    places    msg='некоректне посилання'
    Очікувваний результат Майданчикам

Перейти на вкладку Захист учасників
    Вибір і перехід по нижньому меню    Захист учасників
    Перевірка сторінки після переходу    zahist    msg='некоректне посилання'
    Очікувваний результат Захист учасників

Перейти на вкладку Запитання та відповіді
    Вибір і перехід по нижньому меню    Запитання та відповіді
    Перевірка сторінки після переходу    faq    msg='некоректне посилання'
    Очікувваний результат Запитання та відповіді