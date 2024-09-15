SELECT*
FROM US;
-- DELETE BLANK ROWS --
DELETE
FROM US 
WHERE A = '';
-- DELETE DUPLICATE ROWS--
DELETE
FROM US
WHERE NATIONALITY = 'NATIONALITY';
-- CHANGE COLUMN NAME--
ALTER TABLE US 
CHANGE `C-1/D` `C1/D` 
VARCHAR(100);
-- DUPLICATE TABLE --
CREATE TABLE usvisa LIKE us;
-- INSERT TABLE--

insert into usvisa
select nationality, b1b2
from us;

select*
from usvisa;

-- ADDING COMMA TO ROWS--
UPDATE us
SET B1B2 = REPLACE(B1B2,'.','');

select nationality, format(b1b2,0) as formatted_numbers
from us;

update us
set b1b2 = format(b1b2,0);

select*
from us;

-- updated data source--
CREATE TABLE usvisa LIKE us;

insert into usvisa
select*
from us;

UPDATE usvisa
SET c = REPLACE(c,'.','');

select nationality, format(c,0) as formatted_numbers
from usvisa ;

update usvisa
set c = format(c,0);

select nationality, c
from usvisa;

select*
from usvisa;

set sql_safe_updates = 0;

CREATE TABLE usvisa2 LIKE usvisa;

select*
from usvisa2;

insert into usvisa2
select*
from usvisa;

UPDATE usvisa2
SET j = REPLACE(j,'.','');

select nationality, format(j,0) as formatted_numbers
from usvisa2 ;

update usvisa2
set j = format(j,0);

select nationality, j
from usvisa2;

select*
from usvisa2;

alter table usvisa2
drop column numeric_column;










