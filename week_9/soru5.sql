SELECT film.film_id, film.title,inventory.inventory_id FROM 

    film 

INNER JOIN 

   inventory ON film.film_id = inventory.film_id; 