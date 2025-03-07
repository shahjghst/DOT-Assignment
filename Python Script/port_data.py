import polars as pl

#This is setting up and reading the csv file while ignoring any errors that csv file has.)
#Used ignore_errors to fix an error generating
data = pl.read_csv("Bicycle_Parking_20250305.csv",ignore_errors=True)

'''Windows authentication was used to login so no username or password and its represented as trusted_connection=yes. @ acts as the delimiter after the login credentials.
(localdb)\\localDB1 server name, extra slash to remember the slash in the name
nyc_bikes database name
Loads the ODBC Driver 17, you need this installed or this won't work!!!
'''
uri = 'mssql+pyodbc://@(localdb)\\localDB1/nyc_bikes?driver=ODBC+Driver+17+for+SQL+Server&trusted_connection=yes'

#Created an empty table within ssms with its schema and just used append to fill up the empty table with the data from the csv
#bike_parking is the name of the table that was created in ssms before setting it here.
data.write_database(table_name='bike_parking', connection=uri, if_table_exists='append')