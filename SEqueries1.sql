
select distinct recipe_name
from contain join recipe on Recipe_ID=RcpID
where recipe_name NOT IN(Select distinct recipe_name
from (contain join recipe on RcpID=Recipe_ID)
where ing_nm NOT IN (select distinct Ingr
from  (owns join dbuser on usrn=username) 
where username ='Leo'));
