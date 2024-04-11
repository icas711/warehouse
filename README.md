# warehouse

Первоначальные условия:

Предварительно получить auth токен, которым должен быть подписан запрос из метода https://hcateringback-dev.unitbeandev.com/api/auth/login креды для получения токена: admin/admin.

Curl валидного авторизованного запроса:

curl --location 'https://hcateringback-dev.unitbeandev.com/api/items?warehouseId=6aac3263-ca1f-4b4e-8973-3a948873d9de&page=1&pageSize=10' \
--header 'Authorization: eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTcxMjM1MDgwMH0.PYtv4lvnbN7L6Tt71oVN8xPuK_36OUikIFqp5KPi-t4fOObulnXUjx_CfxuvEH-50oFvzSisTvt8pcL4hzqIHA' \

 => экран с пагинированной таблицей (учесть настраиваемое количество отображаемых на странице айтемов - со звездочкой) и поиском по названию для отображения номенклатурных позиций.
