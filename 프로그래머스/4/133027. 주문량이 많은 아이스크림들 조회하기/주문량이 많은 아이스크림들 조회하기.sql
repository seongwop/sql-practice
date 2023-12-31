SELECT TOTAL.FLAVOR
FROM (SELECT FLAVOR, TOTAL_ORDER FROM FIRST_HALF
     UNION ALL
     SELECT FLAVOR, TOTAL_ORDER FROM JULY) TOTAL
GROUP BY TOTAL.FLAVOR
ORDER BY SUM(TOTAL.TOTAL_ORDER) DESC
LIMIT 3
