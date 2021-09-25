## Overview
This analysis focuses on reviews written by paid Amazon members who belong to the Vine program. In this analysis, we had to pick a data set from the  [available Amazon review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt) and perform an ETL (Extract, Transform, Load) process to analyse the data-set chosen and address if there is a bias towards positive reviews from Vine members. For my analysis, I personally chose the ‘US Digital Video Download’ dataset.





## Results
The results for the analysis goes as follows:

- There were 0 Vine reviews and 23,287 non-Vine reviews
 
![Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Total_Vine.png)
![Non-Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Total_Non_Vine.png)

- There were 0 5-star Vine reviews and 4,675 non-Vine 5-star reviews

![Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Vine_5Star_Count.png)
![Non-Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Non_Vine_5Star_Count.png)


- 0% of Vine reviews were 5 stars, due to the fact there were no Vine reviews, while 41% of non-Vine reviews were 5 stars.

![Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Vine_Percentage.png)
![Non-Vine](https://github.com/BrieonaT/Amazon_Vine_Analysis/blob/main/Resources/Non_Vine_Percentage.png)


## Summary
In summary, there is no bias in reguards to Vine reviews, because for this data set, there were no Vine reviews. However, in the future to determine if there is bias for Vine reviews in this category, Amazon might want to invest in funding more Vine users who frequent this data subdivision. From the current data, we can still do further analysis with analysing lower star reviews, such as analysing specifically one 1-star reviews, or using machine learning to figure out common words in the highest and lowest reviews.
