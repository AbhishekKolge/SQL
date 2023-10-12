SELECT ne1.full_name,
    ne2.full_name
FROM new_employees AS ne1
    LEFT JOIN new_employees AS ne2 ON ne2.id = ne1.supervisor_id;