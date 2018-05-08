-- run this query to see when the most sign-ups happen
SELECT COUNT(DISTINCT(user_id)) as signups, DATE(created_at) as signup_date
FROM tutorial.yammer_users
GROUP BY DATE(created_at)

/* It seems like Yammer has seen consistent growth in signups, though it follows a weekly high-low pattern.
The lows are on the weekends, which makes sense since this is a business platform.
The steadily increasing number of signups might just be because the service itself is getting more popular 
and being passed along between business acquaintances.
*/