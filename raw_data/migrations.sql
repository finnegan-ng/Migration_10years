CREATE TABLE migration_10years
(
	CurrentResident CHAR(30)	DEFAULT ''	 NULL,
    DifferentState2009 INTEGER	DEFAULT '0'  NULL,
	DifferentState2010 INTEGER 	DEFAULT '0'  NULL,
    DifferentState2011 INTEGER	DEFAULT '0'  NULL,
    DifferentState2012 INTEGER	DEFAULT '0'  NULL,
    DifferentState2013 INTEGER	DEFAULT '0'  NULL,
    DifferentState2014 INTEGER	DEFAULT '0'  NULL,
    DifferentState2015 INTEGER	DEFAULT '0'  NULL,
    DifferentState2016 INTEGER	DEFAULT '0'  NULL,
    DifferentState2017 INTEGER	DEFAULT '0'  NULL,
    DifferentState2018 INTEGER	DEFAULT '0'  NULL
);

INSERT INTO migration_10years (CurrentResident)
SELECT `Current residence in --` 
FROM migrations_2010;

INSERT INTO migration_10years (DifferentState2009, DifferentState2010, DifferentState2011, DifferentState2012,
DifferentState2013, DifferentState2014, DifferentState2015, DifferentState2016, DifferentState2017, DifferentState2018)
SELECT a.`Different state of residence 1 year ago`,
	   b.`Different state of residence 1 year ago`,
       c.`Different state of residence 1 year ago`,
       d.`Different state of residence 1 year ago`,
       e.`Different state of residence 1 year ago`,
       f.`Different state of residence 1 year ago`,
       g.`Different state of residence 1 year ago`,
       h.`Different state of residence 1 year ago`,
       i.`Different state of residence 1 year ago`,
       j.`Different state of residence 1 year ago`
FROM migrations_2010 a,
	 migrations_2011 b,
     migrations_2012 c,
     migrations_2013 d,
     migrations_2014 e, 
     migrations_2015 f,
     migrations_2016 g,
     migrations_2017 h,
     migrations_2018 i,
     migrations_2019 j;
