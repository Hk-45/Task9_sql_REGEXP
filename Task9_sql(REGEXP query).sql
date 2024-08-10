select * from employee where first_name ~* 'ab'

select * from department

select * from project


--first 3 digits should be this (F,R,E,A,L), 4 digit X or D, 5 digit A to G, 6 & 7 digit A to Z, 8 & 9 digit A to R 
select * from employee where first_name ~* '^(f|r|e|a|l){3}(d|w|x|r)[a-g][a-z]{2}[a-r]{2}$'

--first 2 digits should be this (s,a,g,t), 3 to 5 digits between B to T, 6 digits A to Z, last digit A or L
select * from employee where first_name ~* '^(s|a|g|t){2}[b-t]{3}[a-z](a|l)$'

--I want hiring date of employee who hiring in only august month  
select * from employee where hire_date::varchar ~* '^[0-9]{4}-(0|8){2}-[0-9]{2}$'
	
--first 3 digits a to z, 4 to 6 digits should be (f,r,a,y), 7 digit a to z, 8 & 9 digit C or I, 10 & 11 digit b to s, 
--last digit is O 	
select * from department where location ~* '^[a-z]{3} (f|o|r|a|y){3}[a-z](c|i){2}[b-s]{2}o$'


-- first 2 digit shoulb be (a,d,c), next 2 digit is A to Z, 5 digit L or D, next 2 digit between B to W, 
-- 8 & 9 digit (a,c,i,t,e), last digit E or K	
select * from department where manager_name ~* '^(a|c|d){2}[a-z]{2}(l|d) [b-w]{2}(a|c|i|t|e){2}(e|k)$'

--first digit is C, next 2 digit H or I, next 2 digit between A to D, 6 digit is A to Z, last digit is O
select * from department where location ~* '^C(h|i){2}[a-d]{2}[a-z]o$'

--first 7 digits A to Z, next 3 digits (l,a,m,o,i), next 2 digits is A to R, last digit A or O
select * from project where project_name ~* '^[a-z]{7} (l|a|m|O|i){3}[a-r]{2}(a|o)$'

