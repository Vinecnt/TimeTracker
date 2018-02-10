select 
    a.Name ActivityName, 
    a.StartLocalTime, 
    a.EndLocalTime,
    cg.Name ApplicationName
from 
    Ar_Activity a
join 
    Ar_CommonGroup cg on a.CommonGroupId = cg.CommonId
join 
    Ar_Timeline t on a.ReportId = t.ReportId
where
		t.SchemaName = 'ManicTime/Applications' and
	    date(a.StartLocalTime) like date('now') and 
		date(a.EndLocalTime) like date('now') 