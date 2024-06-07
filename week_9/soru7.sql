SELECT r.rental_id, r.rental_date, p.payment_id 

FROM rental r 

JOIN payment p ON r.rental_id = p.rental_id 

ORDER BY p.amount DESC 

LIMIT 10; 

  