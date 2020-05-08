# big-data-challenge
UCSD Data Science HW #22 - Big Data

### ObjectiveRDS.


• Level 1: Pull Amazon reviews from two different datasets of choice (video games and books selected), in a Google Collab notebook running Spark SQL. Do ETL on the data (remove blanks, duplicaes, etc.) and write to specified SQL database tables in AWS RDS.

• Level 2: Analyze if vine reviewers have a statistically significant difference in reviews compared to non-vine reviewers.


### Conclusion

Across the database of 4.9M reviews examined (4,292 by Vine Reviewers), the vine reviewers DID have a higher average review with >95% statistical significance (3.2 t-stat, 0.07% p-value). Vine reviewers averaged a 4.14 rating whereas non Vine reviewers averaged 4.08.


### Key Files

#### Level 1

• UCSD_HW22_L1_video_games.ipynb - Notebook file, running pyspark in Google Collab, used to do ETL on videogame data. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/UCSD_HW22_L1_video_games.ipynb

• UCSD_HW22_L1_video_games.ipynb - Notebook file, running pyspark in Google Collab, used to do ETL on book data. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/UCSD_HW22_L1_books.ipynb 

• video_games.sql - SQL script used to generate the tables in the AWS RDS DB prior to the loading from the pyspark scripts. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/video_games.sql

#### Level 2

• bias_analysis.sql - SQL script used to query the RDS database in AWS and generate review stats. https://github.com/alexisperumal/big-data-challenge/blob/master/level-2/bias_analysis.sql

• bias_analysis.xlsx - Statistical Hypothosis Testing analysis of potential bias in reviews by Vine reviewers. https://github.com/alexisperumal/big-data-challenge/blob/master/level-2/bias_analysis.xlsx


