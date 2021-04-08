*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Спрощена/Допорогова закупівля
    Перевірка сторінки після переходу    belowThreshold    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Спрощена/Допорогова закупівля на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Відкриті торги
    Перевірка сторінки після переходу    aboveThresholdUA    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Відкриті торги на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Відкриті торги з публікацією англійською мовою
    Перевірка сторінки після переходу    aboveThresholdEU    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Відкриті торги з публікацією англійською мовою на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Переговорна процедура
    Перевірка сторінки після переходу    negotiation    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Переговорна процедура на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Переговорна процедура (скорочена)
    Перевірка сторінки після переходу    negotiation.quick    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Переговорна процедура (скорочена) на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Переговорна процедура для потреб оборони
    Перевірка сторінки після переходу    aboveThresholdUA.defense    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Переговорна процедура для потреб оборони на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Конкурентний діалог 1-ий етап
    Перевірка сторінки після переходу    competitiveDialogueUA    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Конкурентний діалог 1-ий етап на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Конкурентний діалог 2-ий етап
    Перевірка сторінки після переходу    competitiveDialogueUA.stage2    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Конкурентний діалог 2-ий етап на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Конкурентний діалог з публікацією англійською мовою 1-ий етап
    Перевірка сторінки після переходу    competitiveDialogueEU    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Конкурентний діалог з публікацією англійською мовою 1-ий етап на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Конкурентний діалог з публікацією англійською мовою 2-ий етап
    Перевірка сторінки після переходу    competitiveDialogueEU    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Конкурентний діалог з публікацією англійською мовою 2-ий етап на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Відкриті торги для закупівлі енергосервісу
    Перевірка сторінки після переходу    esco    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Відкриті торги для закупівлі енергосервісу на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Закупівля без використання електронної системи
    Перевірка сторінки після переходу    reporting    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Закупівля без використання електронної системи на сторінці

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Укладання рамкової угоди
    Перевірка сторінки після переходу    closeFrameworkAgreementUA    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Укладання рамкової угоди на сторінці відображається

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Відбір для закупівлі за рамковою угодою
    Перевірка сторінки після переходу    closeFrameworkAgreementSelectionUA    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Відбір для закупівлі за рамковою угодою на сторінці відображається

Перейти на вкладку Вид закупівлі
    Обрати закупівлю по типу    Спрощені торги із застосуванням електронної системи закупівель
    Перевірка сторінки після переходу    simple    msg='некоректне посилання'
    Очікувваний результат тип закупівлі Спрощені торги із застосуванням електронної системи закупівель на сторінці відображається