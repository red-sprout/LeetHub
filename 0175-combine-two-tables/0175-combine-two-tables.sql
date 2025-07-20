select 
    p.firstname as FIRSTNAME,
    p.lastName as LASTNAME,
    a.city as CITY,
    a.state as STATE
from Person p
left join Address a on (p.personId = a.personId)