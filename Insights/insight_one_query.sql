SELECT 'Total in parks' AS 'total',COUNT(*) AS number_of_bike_racks FROM bike_parking
WHERE ntaname IN (
    'Alley Pond Park',
    'Baisley Park',
    'Bronx Park',
    'Calvert Vaux Park',
    'Flushing Meadows-Corona Park',
    'Forest Park',
    'Highbridge Park',
    'Marine Park-Mill Basin-Bergen Beach',
	'Marine Park-Plumb Island',
    'Prospect Park',
    'Van Cortlandt Park',
    'Sunset Park (West)',
	'Sunset Park (Central)'
)

UNION ALL

SELECT 'Total not in parks', COUNT(*) AS number_of_bike_racks FROM bike_parking
WHERE ntaname NOT IN (
    'Alley Pond Park',
    'Baisley Park',
    'Bronx Park',
    'Calvert Vaux Park',
    'Flushing Meadows-Corona Park',
    'Forest Park',
    'Highbridge Park',
    'Marine Park-Mill Basin-Bergen Beach',
	'Marine Park-Plumb Island',
    'Prospect Park',
    'Van Cortlandt Park',
    'Sunset Park (West)',
	'Sunset Park (Central)'
)
