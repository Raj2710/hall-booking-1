select sm.id, cast(sm.createdAt as date) as createdAt, sm.legalName, sm.businessPhoneNumber, sm.businessEmail, state.stateName, city.cityName
from sales_merchant sm left join state on sm.businessState = state.stateId
left join city on sm.businessCity = city.cityId 
where (sm.legalName like '%%' or sm.businessEmail like '%%')
and (cast(sm.createdAt as date) >= '2024-03-15' and cast(sm.createdAt as date) <= '2024-03-22')
order by sm.createdAt desc
limit 10 offset 0