# BookStore
# Книжный магазин. 
Данный проект предназначен для упорядочения деятельности книжного магазина, и разделен на 3 роли.

# Издательство
Издатели работают с книжными магазинами: получают от них заявки на закупку книг, а также сообщают о собранных предзаказах на запланированные к выходу книги. Список запланированных к выходу книг поддерживает издательство с указанием цены и даты выхода. Книги имеют метки о жанре и список авторов По каждой книге издатель может посчитать уровень прибыли от продаж (учитывая выплаты авторам, % или фиксированная сумма). Формально издательство имеет список договоров с авторами, где указывается (для упрощения) тип получаемого вознаграждения или фикс. размер выплаты (необходимо для расчета прибыли). Также издатель может определить магазины, которым они предоставляют скидку в 3% на основании большого объема продаж конкретно этому магазину. Издатель принимает от авторов уведомления о готовящихся к выпуску книгах, что и составляет cписок запланированных новинок для размещения в каталоге книжного магазина.
# Книжный магазин
Книжный магазин принимает заказы от клиентов, где указывает статус заказа. При этом, заказ может быть выполнен частично, что и будет отражаться в статусе. Также магазин принимает предварительные заказы на еще не изданные книги и собирает данную статистику с целью отправки заявок издательству, если набирается N заказов. Кроме этого, магазин ведет статистику по наиболее выгодным для него жанрам литературы, что и отображается в соответствующем отчёте. На каждую книгу магазин выставляет наценку. Кроме этого, ведется бухгалтерия магазина: можно посчитать сумму выплат работникам, прибыль от продажи книг и т.д.
# Покупатель
Покупатель может просматривать список книг, формировать заказ с указанием количества книг, адреса доставки и т.д. Оплатить заказ можно несколькими способами. Можно составлять список понравившихся книг, а также отзывы к ним. Кроме этого, покупатель может видеть информацию о потраченной сумме на книги, а также устанавливать глобальный фильтр, чтобы видеть книги только тех жанров, что его интересуют. Имеется возможность вернуть/продать книгу магазину за 70% от стоимости, если это сделано в течение месяца; 40% стоимости, если это сделано после истечения месяца. В каталоге магазина такие книги помечаются как не новые.