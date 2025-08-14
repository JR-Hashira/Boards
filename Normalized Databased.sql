SELECT 
    r.RespondentID,
    r.PersonName AS Person,
    c.ConsoleName AS Console,
    r.YearsPlayed AS [Yrs Played],
    r.ReasonForPlaying AS Reason,
    g.GameTitle AS [Fav Game],
    gt.GenreDescription AS Genre,
    r.Rating
FROM 
    SurveyResponses r
JOIN 
    Consoles c ON r.ConsoleID = c.ConsoleID
JOIN 
    Games g ON r.FavoriteGameID = g.GameID
LEFT JOIN 
    GameGenres gt ON r.GenreID = gt.GenreID
WHERE 
    r.SurveyID = 12345
    AND r.ResponseDate >= '2023-01-01'
    AND r.Rating IS NOT NULL
ORDER BY 
    r.Rating DESC,
    r.PersonName;