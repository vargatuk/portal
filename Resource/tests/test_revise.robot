*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Вибір замовника по коду ЄДРПОУ
    [Documentation]    Вибір та пошук замовника по коду ЄДРПОУ
    [Tags]    procuringEntity
    Пошук по назві замовника       Test Division Organization

Вибір замовника по коду ЄДРПОУ
    [Documentation]    Вибір та пошук замовника по коду ЄДРПОУ
    [Tags]    procuringEntity
    Пошук по назві замовника       Test Division Organization