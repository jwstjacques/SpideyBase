CREATE PROCEDURE [Spidey].[GetRegionsByCountryId]
	@country_id int
AS
	SET NOCOUNT ON;

	SELECT
		r.region_id
		,region_name
	FROM Spidey.Regions r
	WHERE r.country_id = @country_id
GO
