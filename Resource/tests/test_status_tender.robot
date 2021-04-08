*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Вибір статусу в блоці пошуку
    Пошук статусу по назві    Період уточнень
    Перевірка сторінки після переходу    enquiries    msg='некоректне посилання'
    Очікувваний результат статус Період уточнень відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Подання пропозицій
    Перевірка сторінки після переходу    tendering    msg='некоректне посилання'
    Очікувваний результат статус Подання пропозицій відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Прекваліфікація
    Перевірка сторінки після переходу    pre    msg='некоректне посилання'
    Очікувваний результат статус Прекваліфікація відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Прекваліфікація (період оскарження)
    Перевірка сторінки після переходу    stand-still    msg='некоректне посилання'
    Очікувваний результат статус Прекваліфікація (період оскарження) відображається на сторінці

------------------------------------------------------------------------------------------------------------------------

Вібір статусу і порівняння результата в пошуці
    [Documentation]    Статус "Аукціон"
    [Tags]   Auction
    Пошук статусу по назві       Аукціон
    Порівняння тексту фільтра     Аукціон

Вібір статусу і порівняння результата в видачі
    [Documentation]    Статус "Аукціон"
    [Tags]   Auction
    ${url}=   Перехід на сторінку статусу     active.auction
    Порівняння тексту фільтра статусу з текстом першого результату видачі    Аукціон

------------------------------------------------------------------------------------------------------------------------


Вибір статусу в блоці пошуку
    Пошук статусу по назві    Кваліфікація переможця
    Перевірка сторінки після переходу    cation    msg='некоректне посилання'
    Очікувваний результат статус Кваліфікація переможця відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Кваліфікація переможця (період оскарження)
    Перевірка сторінки після переходу    fica    msg='некоректне посилання'
    Очікувваний результат статус Кваліфікація переможця (період оскарження) відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Пропозиції роглянуті
    Перевірка сторінки після переходу    awarded    msg='некоректне посилання'
    Очікувваний результат статус Пропозиції роглянуті відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Завершена
    Перевірка сторінки після переходу    complete    msg='некоректне посилання'
    Очікувваний результат статус Завершена відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Торги відмінено
    Перевірка сторінки після переходу    cancelled    msg='некоректне посилання'
    Очікувваний результат статус Торги відмінено відображається на сторінці

Вибір статусу в блоці пошуку
    Пошук статусу по назві    Торги не відбулися
    Перевірка сторінки після переходу    unsuccessful    msg='некоректне посилання'
    Очікувваний результат статус Торги не відбулися відображається на сторінці






