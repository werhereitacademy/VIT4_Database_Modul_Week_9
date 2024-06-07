--İlk isminde Nick, Ed ve Jennifer adları bulunan aktörlerin adını ve soyadını gösterin
select first_name, last_name 
from actor 
where first_name like 'Nick%' or first_name like 'Ed%' or first_name like 'Jennifer%' ;


SELECT first_name, last_name 
FROM actor 
WHERE first_name REGEXP '^(Nick|Ed|Jennifer)';


--İlk isminde adları Ed, Nick ve Jennifer olan aktörün sadece soyadını gösterin.
select  last_name 
from actor 
where first_name like 'Nick%' or first_name like 'Ed%' or first_name like 'Jennifer%' ;


SELECT  last_name 
FROM actor 
WHERE first_name REGEXP '^(Nick|Ed|Jennifer)';

--Adres tablosunun bütün ayrıntılarını gösterin.
select * from address;


--Adres tablosunda ilçe ve telefonu (district & phone) azalan sırada gösterin
select district, phone from address order by district desc;

SELECT district, phone 
FROM address 
ORDER BY district DESC, phone DESC;


--Film ve envanter tablosundaki film_id’yi kullanarak, Film tablosundan film_id’yi, title’ i ve Envanter tablosundan envanter_id'sini gösterin.
select f.film_id, f.title, i.inventory_id 
from film as f 
inner join inventory as i 
on f.film_id=i.film_id;



--Envanter tablosu ve rental tablosundan oluşan ilk 5 satırı gösterin.
select *
from rental as r 
inner join inventory as i
on r. inventory_id=i.inventory_id
limit 5;
	
--Rental ve Payment tablolarından oluşan amount a göre azalan olarak sıralanmış rental_id, rental_date, payment_id ‘den oluşan ilk 10 satırı gösterin.
select r.rental_id, r.rental_date, p.payment_id 
from rental as r 
inner join payment as p
on r.customer_id=p.customer_id
order by p.amount desc
limit 10;

SELECT r.rental_id, r.rental_date, p.payment_id 
FROM rental AS r 
INNER JOIN payment AS p 
ON r.rental_id = p.rental_id 
ORDER BY p.amount DESC 
LIMIT 10;

--Actor tablosunda actor_id 'nin boş olduğu satırların diğer detaylarını gösteriniz.

select * from actor where actor_id is null;

--Actor tablosunda actor_id 'nin boş olmadığı satırların diğer detaylarını gösteriniz.

select * from actor where actor_id is not null;

--Film tablosunda boş olmayan satırların sayısını bulunuz.
select count(*) from film where film_id is not null;

--Payment tablosundan amount’un toplamını çıktı başlığı sum_amt olarak gösteriniz.
select sum(amount) as sum_amt from payment;
--Payment tablosundan maximum ve minimum amount ‘u gösteriniz.
select amount from payment;
select max(amount), min(amount) from payment;



