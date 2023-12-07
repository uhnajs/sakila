SELECT a.first_name, a.last_name
FROM film as fl
        INNER JOIN film_actor fa ON fl.film_id = fa.film_id
        INNER JOIN actor a ON a.actor_id = fa.actor_id
WHERE fl.title = 'ACADEMY DINOSAUR';

SELECT first_name, last_name, fl.title
FROM film fl
LEFT JOIN film_actor fa on fl.film_id = fa.film_id
LEFT JOIN actor a on fa.actor_id = a.actor_id
ORDER BY fl.title;

SELECT fl.title, i.inventory_id
FROM film fl
FULL OUTER JOIN inventory i ON fl.film_id = i.film_id;

SELECT fl.title, cs.first_name, cs.last_name
FROM film fl
CROSS JOIN customer cs;

SELECT DISTINCT c.first_name, c.last_name
FROM category ct
INNER JOIN public.film_category fc on ct.category_id = fc.category_id
INNER JOIN public.film f on f.film_id = fc.film_id
INNER JOIN public.inventory i on f.film_id = i.film_id
INNER JOIN public.rental r on i.inventory_id = r.customer_id
INNER JOIN public.customer c on c.customer_id = r.customer_id
WHERE ct.name = 'Drama'