IF EXISTS 
        (SELECT 1 
        FROM sys.synonyms syn
        INNER JOIN sys.schemas sch ON sch.schema_id = syn.schema_id
        WHERE sch.[name] = 'dbo'
        AND syn.[name] = 'MySynonym') 
BEGIN
	DROP SYNONYM dbo.MySynonym
END

CREATE SYNONYM dbo.MySynonym FOR TargetDatabase.dbo.TargetObject