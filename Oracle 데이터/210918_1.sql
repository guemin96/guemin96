select * from students;
SELECT * FROM attendance;
SELECT * FROM subjects;

select t1.sid, t1.sname, count(*)
from students t1, attendance t2
where t1.sid = t2.sid(+)
group by t1.sid, t1.sname;

select t1.sid, t1.sname, t2.subiD, t3.sname, COUNT(*)
from students t1, attendance t2, SUBJECTS T3
where t1.sid = t2.sid
AND t2.subid=t3.subid
GROUP BY t1.sid, t1.sname, t2.subiD, t3.sname
ORDER BY t1.sname ASC;

select t1.sid, t1.sname, t2.subiD, t3.sname, COUNT(*)
from students t1, attendance t2, SUBJECTS T3
where t1.sid = t2.sid(+)
AND t2.subid=t3.subid
GROUP BY t1.sid, t1.sname, t2.subiD, t3.sname
ORDER BY t1.sname ASC

SELECT * FROM A

select * from 
STUDENTS T1,ATTENDANCE T2
where T1.SID= T2.SID(+);

SELECT 'S'||TO_CHAR(TO_NUMBER(SUBSTR(MAX(SID),2)+1),'FM000')
FROM STUDENTS;
SELECT * FROM STUDENTS;


