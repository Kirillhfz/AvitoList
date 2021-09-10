## Задание для стажера на платформу iOS
#### Общее описание задания
Написать приложение для iOS. Приложение должно состоять из одного экрана со списком. Список данных в формате JSON приложение загружает из интернета по [ссылке](https://run.mocky.io/v3/1d1cb4ec-73db-4762-8c4b-0b8aa3cecd4c), необходимо распарсить эти данные и отобразить их в списке. 

[Пример](https://github.com/avito-tech/ios-trainee-problem-2021/blob/main/response_example.json) возвращаемых данных.

#### Требование к реализации:
- Приложение работает на iOS 13 и выше;
- Реализована поддержка iPhone и iPad;
- Список отсортирован по алфавиту;
- \* Кэширование ответа на 1 час;
- \* Обработаны случаи потери сети / отсутствия соединения.

Внешний вид приложения - по-возможности лаконичный, но, в целом, на усмотрение кандидата.

#### Требования к коду:
 - Приложение написано на языке Swift;
 - Пользовательский интерфейс приложения настроен в InterfaceBuilder (в Storiboard или Xib файлы) или кодом без использования SwiftUI;
 - Для отображения списка используется UITableView, либо UICollectionView;
 - Для запроса данных используется URLSession.

#### Требования к передаче результатов:
- Код должен быть выложен в git-репозиторий на [github.com](http://github.com/) или его альтернативах с предоставленным доступом.


# Реализация приложения

### Экраны приложения:

<img src="https://github.com/Kirillhfz/AvitoList/blob/main/Support%20Images/AvitoListDemo.gif" width="295"/><img src="Support Images/AvitoDemo_02.png" width="300"/>

### Выполненные требования:

- [X] Требование к реализации:
    - [X] Приложение работает на iOS 13 и выше;
    - [X] Реализована поддержка iPhone и iPad;
    - [X] Список отсортирован по алфавиту;
    - [ ] Кэширование ответа на 1 час;
    - [ ] Обработаны случаи потери сети / отсутствия соединения.
    
- [X] Внешний вид приложения - по-возможности лаконичный, но, в целом, на усмотрение кандидата.

- [X] Требования к коду:
    - [X] Приложение написано на языке Swift;
    - [X] Пользовательский **`интерфейс приложения настроен в InterfaceBuilder`** (**`в Storiboard`** или Xib файлы) или кодом без использования SwiftUI;
    - [X] Для отображения списка **`используется UITableView`**, либо UICollectionView;
    - [X] Для запроса данных используется URLSession.
- [X] Требования к передаче результатов:
    - [X] Код должен быть выложен в git-репозиторий на [github.com](http://github.com/) или его альтернативах с предоставленным доступом.
    
### Дополнительно:
- [X] Реализована MVC архитектура
- [X] Приложение имеет логотип, размер реализован под все устройства
- [X] LaunchScreen отображает логотип
- [X] UI-интерфейс приложения поддерживает монохром
