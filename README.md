# warehouse
Склад/Учет

Стэк: bloc & annotation freezed

Получаем auth токен, которым должен быть подписан запрос из метода https://hcateringback-dev.unitbeandev.com/api/auth/login. Креды для получения токена: admin/admin.

Curl валидного авторизованного запроса:

curl --location 'https://hcateringback-dev.unitbeandev.com/api/items?warehouseId=6aac3263-ca1f-4b4e-8973-3a948873d9de&page=1&pageSize=10' \
--header 'Authorization: eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTcxMjM1MDgwMH0.PYtv4lvnbN7L6Tt71oVN8xPuK_36OUikIFqp5KPi-t4fOObulnXUjx_CfxuvEH-50oFvzSisTvt8pcL4hzqIHA' \

 => экран с пагинированной таблицей (учесть настраиваемое количество отображаемых на странице айтемов - со звездочкой) и поиском по названию для отображения номенклатурных позиций.

=> создание/редактирование номенклатурных позиций. Метод для создания: https://hcateringback-dev.unitbeandev.com/api/items. POSt Метод для редактирования: https://hcateringback-dev.unitbeandev.com/api/items/{id}. PATCH
Cоздание по нажатию на кнопку "Новая позиция", редактирование - по нажатию на иконку карандаша напротив номенклатурной позиции. В режиме редактирования в заголовке модалки вместо "Новвая позиция" отображать название редактируемой позиции.
![1](https://github.com/icas711/warehouse/assets/50333299/cc8179b8-53d4-4948-a1fd-ed36cf0ae1ad)

![2](https://github.com/icas711/warehouse/assets/50333299/beabfe55-61e2-42fd-aa7b-0e012fcd7961)

![3](https://github.com/icas711/warehouse/assets/50333299/e6111096-33d3-471b-945e-6b05f897b9dc)
