# Exploring Demographics with Big Data Services on AWS

### Services used:
 - Amazon S3
 - Amazon Glue
 - Amazon Athena
 - Amazon QuickSight

### Development steps

### Create a bucket in Amazon S3

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [bucket name/dio-athena-data-amo] - Create bucket
- Create a folder (Create a folder called ```/output``` and another with the name of your dataset. This name will define the name of the table created in Glue)
- Upload the data files located in the folder ```/br_population_data```

#### Create Glue Crawler

- Amazon Glue Console -> Crawlers -> Add Crawler/Create Crawler
 - **Step 1** - Set crawler properties:
  - Name: [PopulationDbCrawlerAMO]
 - **Step 2** - Choose data sources and classifiers
  - Add data source [S3] -> Location of S3 data [x]In this account ->
  - Subsequent crawler runs [x]Crawl all sub-folders
  - Include path: Browser S3 -> Choose S3 path [s3://dio-athena-data-amo] -> Add an S3 data source
 - **Step 3** - Configure security settings
  - IAM role: Create a new IAM role [AWSGlueServiceRole-Population]
 - **Step 4** - Set output and scheduling
  - Add Database: Create a database [your_db_name/population-db-amo]
  - Advanced options: S3 schema grouping [x]Create a single schema for each S3 path
  - Crawler schedule: Frequency [x]On demand
 - **Step 5** - Review and create
  - Create crawler
- AWS Glue -> Crawlers -> Check your crawler and Run
 - Databases -> Tables: View created table data

### Create an Application on Amazon Athena

- Query editor -> Settings -> Manage settings -> Query result location and encryption -> Browse S3 -> select the created bucket
- Select Database -> create queries (examples in folder ```/src```)
- Check unsaved queries in the bucket created in S3
- Save queries -> Rerun -> Check in Bucket Created in S3

#### Creating a new table

- Generate table DDL
- Copy the generated query
- Select the DB and create the new table in a new query

### Visualize Data in Amazon QuickSight

- Signup (If you don't have an account) -> to choose [Standard]
- Datasets -> Create new dataset -> Athena -> Name [DataSetName] -> Create
- Select database -> select table -> Edit or preview -> Save & visualize
- Create visualizations by selecting columns, creating filters and parameters, and selecting Visual types for charts.

### Delete features
 - Delete created elements

