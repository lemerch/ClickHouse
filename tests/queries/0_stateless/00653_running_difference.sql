SET allow_deprecated_functions = 1;
select runningDifference(x) from (select arrayJoin([0, 1, 5, 10]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([2, Null, 3, Null, 10]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([Null, 1]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([Null, Null, 1, 3, Null, Null, 5]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([0, 1, 5, 10, 170141183460469231731687303715884105727]::Array(UInt128)) as x);
select '-';
select runningDifference(x) from (select arrayJoin([0, 1, 5, 10, 170141183460469231731687303715884105728]::Array(UInt256)) as x);
select '-';
select runningDifference(x) from (select arrayJoin([0, 1, 5, 10, 170141183460469231731687303715884105727]::Array(Int128)) as x);
select '-';
select runningDifference(x) from (select arrayJoin([0, 1, 5, 10, 170141183460469231731687303715884105728]::Array(Int256)) as x);
select '--Date Difference--';
select runningDifference(x) from (select arrayJoin([Null, Null, toDate('1970-1-1'), toDate('1970-12-31'), Null, Null,  toDate('2010-8-9')]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([Null, Null, toDate32('1900-1-1'), toDate32('1930-5-25'), toDate('1990-9-4'), Null,  toDate32('2279-5-4')]) as x);
select '-';
select runningDifference(x) from (select arrayJoin([Null, Null, toDateTime('1970-06-28 23:48:12', 'Asia/Istanbul'), toDateTime('2070-04-12 21:16:41', 'Asia/Istanbul'), Null, Null, toDateTime('2106-02-03 06:38:52', 'Asia/Istanbul')]) as x);
