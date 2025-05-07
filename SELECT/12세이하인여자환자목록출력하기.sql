SELECT pt_name, pt_no, gend_cd, age, ifnull(tlno, 'NONE') AS TLNO
from patient
where age <= 12 and gend_cd = 'W'
order by age DESC, pt_name ASC;
