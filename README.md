# Export SQL Query to CSV

original: https://github.com/orisonchan/SQL-query-export-to-CSV.git

This tools uses SpringBoot and needs at least JDK1.8.

You can compile and package using Maven command:

> mvn package -DskipTests

When you wanna start it, please use java -jar with this two parameters:

+ -i input SQL file absolute path

+ -o CSV output directory

Run command example:

> java -jar sql-exporter.jar -o /path/to/data/ -i /path/to/sql.sql

Supports Oracle、MySQL、SQL Server、DB2. You should modify ***application.properties*** file to adapt different data sources.

Input file can support more than 1 sql but different sqls will be divided by lines.

File Example:

```sql
SELECT * FROM tableA;
SELECT ID
  FROM tableB;
```

And the file must exists, otherwise, tools will throw *FileNotFoundException*.

Output CSV file(s) will overwrite itself(ves).
