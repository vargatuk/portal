*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Перевірка наявності критеріїв у тендері
    [Documentation]    Перевірка наявності критеріїв у тендері
    [Tags]   criteria
    Перевірка наявності критеріїв у тендері       Відкриті торги
    Вводимо значення    UA-2021-05-17-000189-c