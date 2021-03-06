*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Вибір регіону і порівняння з заданим результатом місто Севастополь
    [Documentation]    місто Севастополь пошук по назві і порівняння з результатом
    [Tags]    region
    Пошук регіона по назві вибираємо вручну       місто Севастополь
    Порівняння тексту фільтра     місто Севастополь

Вибір регіону і порівння при переході по урлу місто Севастополь
    [Documentation]    Статус Севастополь перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    99
    Порівняння тексту фільтра     місто Севастополь
    #Порівняння тексту фільтра статусу з текстом першого результату видачі    місто Севастополь
##############################################################################################

Вибір регіону і порівняння з заданим результатом місто Київ
    [Documentation]    місто Київ пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       місто Київ
    Порівняння тексту фільтра     місто Київ

Вибір регіону і порівння при переході по урлу місто Київ
    [Documentation]    Статус Київ перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    1-6
    Порівняння тексту фільтра     місто Київ

##############################################################################################
Вибір регіону і порівняння з заданим результатом Київська область
    [Documentation]    Обрати Київська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Київська область
    Порівняння тексту фільтра     Київська область

Вибір регіону і порівння при переході по урлу Київська область
    [Documentation]    Статус Київська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    7-9
    Порівняння тексту фільтра     Київська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Луганська область
    [Documentation]    Обрати Луганська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Луганська область
    Порівняння тексту фільтра     Луганська область

Вибір регіону і порівння при переході по урлу Луганська область
    [Documentation]    Статус Луганська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    91-94
    Порівняння тексту фільтра     Луганська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Полтавська область
    [Documentation]    Обрати Полтавська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Полтавська область
    Порівняння тексту фільтра     Полтавська область

Вибір регіону і порівння при переході по урлу Полтавська область
    [Documentation]    Статус Полтавська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    36-39
    Порівняння тексту фільтра     Полтавська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Житомирська область
    [Documentation]    Обрати Житомирська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Житомирська область
    Порівняння тексту фільтра     Житомирська область

Вибір регіону і порівння при переході по урлу Житомирська область
    [Documentation]    Статус Житомирська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    10-13
    Порівняння тексту фільтра     Житомирська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Волинська область
    [Documentation]    Обрати Волинська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Волинська область
    Порівняння тексту фільтра     Волинська область

Вибір регіону і порівння при переході по урлу Волинська область
    [Documentation]    Статус Волинська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    43-45
    Порівняння тексту фільтра     Волинська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Львівська область
    [Documentation]    Обрати Львівська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Львівська область
    Порівняння тексту фільтра     Львівська область

Вибір регіону і порівння при переході по урлу Львівська область
    [Documentation]    Статус Львівська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    79-82
    Порівняння тексту фільтра     Львівська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Чернівецька область
    [Documentation]    Обрати Чернівецька область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Чернівецька область
    Порівняння тексту фільтра     Чернівецька область

Вибір регіону і порівння при переході по урлу Чернівецька область
    [Documentation]    Статус Чернівецька область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    58-60
    Порівняння тексту фільтра     Чернівецька область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Донецька область
    [Documentation]    Обрати Донецька область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Донецька область
    Порівняння тексту фільтра     Донецька область

Вибір регіону і порівння при переході по урлу Донецька область
    [Documentation]    Статус Донецька область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    83-87
    Порівняння тексту фільтра     Донецька область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Черкаська область
    [Documentation]    Обрати Черкаська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Черкаська область
    Порівняння тексту фільтра     Черкаська область

Вибір регіону і порівння при переході по урлу Черкаська область
    [Documentation]    Статус Черкаська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    18-20
    Порівняння тексту фільтра     Черкаська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Харківська область
    [Documentation]    Обрати Харківська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Харківська область
    Порівняння тексту фільтра     Харківська область

Вибір регіону і порівння при переході по урлу Харківська область
    [Documentation]    Статус Харківська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    61-64
    Порівняння тексту фільтра     Харківська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Сумська область
    [Documentation]    Обрати Сумська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Сумська область
    Порівняння тексту фільтра     Сумська область

Вибір регіону і порівння при переході по урлу Сумська область
    [Documentation]    Статус Сумська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    40-42
    Порівняння тексту фільтра     Сумська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Автономна Республіка Крим
    [Documentation]    Обрати Автономна Республіка Крим пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Автономна Республіка Крим
    Порівняння тексту фільтра     Автономна Республіка Крим

Вибір регіону і порівння при переході по урлу Автономна Республіка Крим
    [Documentation]    Статус Автономна Республіка Крим перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    95-98
    Порівняння тексту фільтра     Автономна Республіка Крим

##############################################################################################

Вибір регіону і порівняння з заданим результатом Кіровоградська область
    [Documentation]    Обрати Кіровоградська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Кіровоградська область
    Порівняння тексту фільтра     Кіровоградська область

Вибір регіону і порівння при переході по урлу Кіровоградська область
    [Documentation]    Статус Кіровоградська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    25-28
    Порівняння тексту фільтра     Кіровоградська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Хмельницька область
    [Documentation]    Обрати Хмельницька область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Хмельницька область
    Порівняння тексту фільтра     Хмельницька область

Вибір регіону і порівння при переході по урлу Хмельницька область
    [Documentation]    Статус Хмельницька область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    29-32
    Порівняння тексту фільтра     Хмельницька область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Одеська область
    [Documentation]    Обрати Одеська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Одеська область
    Порівняння тексту фільтра     Одеська область

Вибір регіону і порівння при переході по урлу Одеська область
    [Documentation]    Статус Одеська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    65-68
    Порівняння тексту фільтра     Одеська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Чернігівська область
    [Documentation]    Обрати Чернігівська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Чернігівська область
    Порівняння тексту фільтра     Чернігівська область

Вибір регіону і порівння при переході по урлу Чернігівська область
    [Documentation]    Статус Чернігівська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    14-17
    Порівняння тексту фільтра     Чернігівська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Тернопільська область
    [Documentation]    Обрати Тернопільська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Тернопільська область
    Порівняння тексту фільтра     Тернопільська область

Вибір регіону і порівння при переході по урлу Тернопільська область
    [Documentation]    Статус Тернопільська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    46-48
    Порівняння тексту фільтра     Тернопільська область

##############################################################################################
Вибір регіону і порівняння з заданим результатом Івано-Франківська область
    [Documentation]    Обрати Івано-Франківська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Івано-Франківська область
    Порівняння тексту фільтра     Івано-Франківська область

Вибір регіону і порівння при переході по урлу Івано-Франківська область
    [Documentation]    Статус Івано-Франківська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    76-78
    Порівняння тексту фільтра     Івано-Франківська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Херсонська область
    [Documentation]    Обрати Херсонська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Херсонська область
    Порівняння тексту фільтра     Херсонська область

Вибір регіону і порівння при переході по урлу Херсонська область
    [Documentation]    Статус Херсонська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    73-75
    Порівняння тексту фільтра     Херсонська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Вінницька область
    [Documentation]    Обрати Вінницька область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Вінницька область
    Порівняння тексту фільтра     Вінницька область

Вибір регіону і порівння при переході по урлу Вінницька область
    [Documentation]    Статус Вінницька область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    21-24
    Порівняння тексту фільтра     Вінницька область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Миколаївська область
    [Documentation]    Обрати Миколаївська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Миколаївська область
    Порівняння тексту фільтра     Миколаївська область

Вибір регіону і порівння при переході по урлу Миколаївська область
    [Documentation]    Статус Миколаївська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    54-57
    Порівняння тексту фільтра     Миколаївська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Рівненська область
    [Documentation]    Обрати Рівненська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Рівненська область
    Порівняння тексту фільтра     Рівненська область

Вибір регіону і порівння при переході по урлу Рівненська область
    [Documentation]    Статус Рівненська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    33-35
    Порівняння тексту фільтра     Рівненська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Дніпропетровська область
    [Documentation]    Обрати Дніпропетровська область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Дніпропетровська область
    Порівняння тексту фільтра     Дніпропетровська область

Вибір регіону і порівння при переході по урлу Дніпропетровська область
    [Documentation]    Статус Дніпропетровська область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    49-53
    Порівняння тексту фільтра     Дніпропетровська область

##############################################################################################

Вибір регіону і порівняння з заданим результатом Запорізька область
    [Documentation]    Обрати Запорізька область пошук по назві і порівняння з результатом
    [Tags]   region
    Пошук регіона по назві вибираємо вручну       Запорізька область
    Порівняння тексту фільтра     Запорізька область

Вибір регіону і порівння при переході по урлу Запорізька область
    [Documentation]    Статус Запорізька область перехід по урлу
    [Tags]   region
    Перехід на сторінку регіона по урлу    69-72
    Порівняння тексту фільтра     Запорізька область

##############################################################################################