
create database assesment;

use assesment;

create table Nobel_win 

(
year1 int ,
subject1 varchar (100) not null,
winner varchar (100) not null,
country varchar (100) not null,
category varchar (100) not null

);

drop database assesment;

insert into Nobel_win ( year1 , subject1 , winner , country , category)

VALUES
    (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
    (1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
    (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
    (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
    (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
    (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
    (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
    (1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
    (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
    (1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
    (1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
    (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
    (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
    (1978, 'Peace', 'Anwar al Sadat', 'Egypt', 'President'),
    (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
    (1987, 'Chemistry', 'Donald J Cram', 'USA', 'Scientist'),
    (1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
    (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
    (1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
    (1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
    (1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
    (1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
    (1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
    (1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');


select * from Nobel_win;

SELECT year1 , subject1, winner FROM Nobel_win WHERE year1 = 1970;

select year1, subject1, winner, country FROM Nobel_win WHERE subject1 = 'Chemistry' AND year1 BETWEEN 1965 AND 1975;

select  year1,subject1,winner,country FROM Nobel_win WHERE winner LIKE 'Louis%';

SELECT year1, subject1, winner, country FROM Nobel_win WHERE subject1 NOT LIKE 'P%' ORDER BY year1 DESC, winner ASC;

SELECT year1, subject1 , winner, country, category
FROM Nobel_win
WHERE year1 = 1970
ORDER BY
CASE
WHEN subject1 IN ('Chemistry', 'Economics') THEN 2
ELSE 1
END,
subject1 ASC;





