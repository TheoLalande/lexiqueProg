-- Permet de récuperer ... ?

SET @webTreeId = 4036; -- 283
SELECT *
FROM SITE_Page sp
WHERE sp.HeaderId = @webTreeId OR sp.FooterId = @webTreeId OR sp.CenterId = @webTreeId OR sp.RightId = @webTreeId OR sp.LeftId = @webTreeId;