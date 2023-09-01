# Exploring Demographics with Big Data Services on AWS

### Services used:
 - Amazon S3
 - Amazon Glue
 - Amazon Athena
 - Amazon QuickSight

### Development steps

### Create a bucket in Amazon S3

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [bucket name] - Create bucket
- Create a folder (Create a folder called ```/output``` and another with the name of your dataset. This name will define the name of the table created in Glue)
- Upload the data files located in the folder ```/data```

#### Create Glue Crawler

- Amazon Glue Console -> Crawlers -> Add Crawler
- Source type [Data Stores] -> Crawl all folders
- Data store [S3] -> Include path [input data directory path]
- Create IAM Role
- Frequency [Run on demand]
- Database name [your_db_name]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases -> Tables -> View data from created tables

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

