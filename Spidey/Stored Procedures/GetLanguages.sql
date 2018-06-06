CREATE PROCEDURE [Spidey].[GetLanguages]
AS
	SET NOCOUNT ON;

	SELECT
		l.language_id
		,l.language_name
		,l.english_name
	FROM Spidey.Languages l
GO
