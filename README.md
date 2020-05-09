# big-data-challenge
UCSD Data Science HW #22 - Big Data

### Objective


• Level 1: Pull Amazon reviews from two different datasets of choice (video games and books selected), in a Google Collab notebook running Spark SQL. Do ETL on the data (remove blanks, duplicaes, etc.) and write to specified SQL database tables in AWS RDS.

• Level 2: Analyze if vine reviewers have a statistically significant difference in reviews compared to non-vine reviewers.


### Conclusion

Across the database of 4.9M reviews examined (4,292 by Vine Reviewers, 4.9M by non-Vine Reviewers), the vine reviewers DID have a higher average review with >95% statistical significance (3.2 t-stat, 0.07% p-value). Vine reviewers averaged a 4.14 rating whereas non Vine reviewers averaged 4.08.

However...
When we looked only at the 636K reviews by customers who posted 5 or more reviews (2,622 Vine reviewers, 634K non-Vine), we got very different results on the bias analysis. Vine reviewers had an average rating of 4.06 compared to 4.27 by non-Vine reviewers. Obviouosly, this causes us to accept the null hypothesis that Vine reviewers don't post higher ratings. Note that due to the way the data is structured, we only have review counts on reviewers of video games, not books. So, unlike the prior analysis which looked at video game and book reviews, this analysis is on those video games only.


### Key Files

#### Level 1

• UCSD_HW22_L1_video_games.ipynb - Notebook file, running pyspark in Google Collab, used to do ETL on videogame data. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/UCSD_HW22_L1_video_games.ipynb

• UCSD_HW22_L1_books.ipynb - Notebook file, running pyspark in Google Collab, used to do ETL on book data. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/UCSD_HW22_L1_books.ipynb 

• video_games.sql - SQL script used to generate the tables in the AWS RDS DB prior to the loading from the pyspark scripts. https://github.com/alexisperumal/big-data-challenge/blob/master/level-1/video_games.sql

#### Level 2

• bias_analysis.sql - SQL script used to query the RDS database in AWS and generate review stats. https://github.com/alexisperumal/big-data-challenge/blob/master/level-2/bias_analysis.sql

• bias_analysis.xlsx - Statistical Hypothosis Testing analysis of potential bias in reviews by Vine reviewers. View both tabs to see both analysis. https://github.com/alexisperumal/big-data-challenge/blob/master/level-2/bias_analysis.xlsx


