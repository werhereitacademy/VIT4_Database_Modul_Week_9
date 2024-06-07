-- Adres tablosunda ilçe ve telefonu azalan sırada gösterme
SELECT district, phone 
FROM address 
ORDER BY district DESC, phone DESC;

-- Tablodan ilk 5 kaydı alma
SELECT * 
FROM actor 
LIMIT 5;

-- Benzersiz kayıtları alma (store_id örneği)
SELECT DISTINCT store_id 
FROM inventory;

-- Bir tabloyu belirli bir sütuna göre azalan sırada sıralama
-- Örneğin, "amount" sütununu azalan sırada sıralama
SELECT * 
FROM payment 
ORDER BY amount DESC;
