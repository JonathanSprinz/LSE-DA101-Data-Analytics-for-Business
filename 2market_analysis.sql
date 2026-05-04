SELECT 
    m.Country,
    SUM(m.AmtLiq + m.AmtVege + m.AmtNonVeg + 
        m.AmtPes + m.AmtChocolates + m.AmtComm) 
        AS Total_Spend,
    SUM(a.Twitter_ad) AS Twitter,
    SUM(a.Instagram_ad) AS Instagram,
    SUM(a.Facebook_ad) AS Facebook
FROM marketing_data m
LEFT JOIN ad_data a ON m.ID = a.ID
GROUP BY m.Country
ORDER BY Total_Spend DESC;