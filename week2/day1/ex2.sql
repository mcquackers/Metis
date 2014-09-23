SELECT starttime, cd.facilities.name FROM cd.bookings JOIN cd.facilities ON
cd.facilities.facid = cd.bookings.facid
WHERE starttime >= '2012-09-21' AND starttime < '2012-09-22' AND
name ILIKE '%Tennis Court%'
ORDER BY starttime;
