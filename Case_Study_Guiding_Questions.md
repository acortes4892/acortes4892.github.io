Scenario

You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, your team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve your recommendations, so they must be
backed up with compelling data insights and professional data visualizations.

Characters and teams
● Cyclistic: A bike-share program that features more than 5,800 bicycles and 600
docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand
tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities
and riders who can’t use a standard two-wheeled bike. The majority of riders opt for
traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more
likely to ride for leisure, but about 30% use the bikes to commute to work each day.
● Lily Moreno: The director of marketing and your manager. Moreno is responsible for
the development of campaigns and initiatives to promote the bike-share program.
These may include email, social media, and other channels.
● Cyclistic marketing analytics team: A team of data analysts who are responsible for
collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy.
You joined this team six months ago and have been busy learning about Cyclistic’s
mission and business goals—as well as how you, as a junior data analyst, can help
Cyclistic achieve them.
● Cyclistic executive team: The notoriously detail-oriented executive team will decide
whether to approve the recommended marketing program.

About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown
to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across
Chicago. The bikes can be unlocked from one station and returned to any other station in the
system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to
broad consumer segments. One approach that helped make these things possible was the
flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.
Customers who purchase annual memberships are Cyclistic members.
Cyclistic’s finance analysts have concluded that annual members are much more profitable
than casual riders. Although the pricing flexibility helps Cyclistic attract more customers,
Moreno believes that maximizing the number of annual members will be key to future growth.
Rather than creating a marketing campaign that targets all-new customers, Moreno believes
there is a solid opportunity to convert casual riders into members. She notes that casual riders
are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into
annual members. In order to do that, however, the team needs to better understand how
annual members and casual riders differ, why casual riders would buy a membership, and how
digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.

ASK
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

Guiding Questions

What is it you’re trying to solve? 
I am trying to solve how we can convert casual riders into annual members. In order to do so, we must understand how casual and annual members differ. I must identify the behavioral differences between rider groups to understand what would motivate a casual rider to upgrade.
How can your insights drive business decisions? 
My insights will drive business decisions by identifying specific trends that will help marketing tactics—such as peak seasonal usage or preferred station locations. By presenting these findings and data visualizations to the executive team, I can provide the evidence needed for them to approve and launch targeted marketing campaigns that can convert casual riders into members.

My business task so far: Design marketing strategies aimed at converting casual riders into annual members. In order to do so my team needs to:
Analyze Cyclistic’s historical trip data to understand how annual members and casual riders differ
Determine why casual riders would buy a membership
Identify trends that will inform marketing tactics, which must then be presented to Cyclistic executives with data insights and visualizations for approval

Prepare
Use Cyclistic’s historical trip data to analyze and identify trends. Download the previous 12
months of Cyclistic trip data here. (Note: The datasets have a different name because Cyclistic
is a fictional company. For the purposes of this case study, the datasets are appropriate and will
enable you to answer the business questions. The data has been made available by Motivate
International Inc. under this license.) This is public data that you can use to explore how
different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit
you from using riders’ personally identifiable information. This means that you won’t be able to
connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic
service area or if they have purchased multiple single passes.


Guiding Questions
Where is your data located? 
On my local drive under a folder titled “Case Study 1 Full 12 Month Data”.
How is the data organized?
I have 5 subfolders: Original Data, Documents, Maps and Charts, Data, and Portfolio. Housing an Original Data folder helps me retain the raw source files untouched. I also have the Data License Agreement within the main folder to ensure compliance documentation is always accessible.
Are there issues with bias or credibility in this data? Does my data ROCCC((Reliable, Original, Comprehensive, Current, and Cited)? 
The data is credible and free of bias since all personal identifiable information has been removed. My data meets the ROCC criteria as follows:
Reliable: The data consists of historical trip records maintained directly by Cyclistic.
Original: This is first-party data provided by Motivate International Inc., the organization that operates the system.
Comprehensive: The dataset captures a full 12 month timeframe, providing a complete view of trip activities across all bike stations.
Current: The data is from 2025 to ensure everything is relevant and current for any proposed marketing strategies. 
Cited: The data is officially provided by the Motivate International Inc. license agreement.
How are you addressing licensing, privacy, security, and accessibility?
I am addressing licensing by following the terms set out in the Motivate International Inc. data license agreement, which permits me to access, analyze, and share the data lawfully. I will make sure to keep this information private and only accessible with my team and any stakeholders that need to see the data. If I share the data to teammates or my supervisor,I'll be sure to provide a version that can’t be edited.
How did you verify the data’s integrity?
I verified the data’s integrity by ensuring the data files weren’t corrupted, validating data consistency ( such as checking for duplicates, missing values, or inconsistent formatting), and verifying the data represents information needed for the task at hand.
How does it help you answer your question? 
The historical trip data allows me to compare usage patterns between casual riders and annual members through information such as ride duration, time of day, and frequency. These differences can hopefully help me understand how casual members and annual members differ. 
Are there any problems with the data?
It looks like I'll need to clean the data across all 12 files to ensure there’s consistent formatting and remove any unnecessary data.

Data sources used: The data license agreement can be found here. The agreement allows me to access, reproduce, analyze, copy, modify, and distribute the data in a lawful manner.

Process
Guiding Questions
What tools are you choosing and why? 
I am using Google Sheets and BigQuery. Since I am working on a chromebook it’s easier for me to use Google Sheets to initially familiarize myself with the data. I will then be merging all 12 csv files into BigQuery since there are 3 csv files that are too large to open in Google Sheets.
Have you ensured your data’s integrity? 
Yes; I have made sure to run data validation such as formatting, made sure access control is limited to myself and my peers working on this project, created backup data, and also created a data log. I have ensured that the data is reliable and accurate before proceeding into the analyze phase.
What steps have you taken to ensure your data is clean? 
I made sure there are no spelling or format errors, trimmed whitespace, and removed duplicates. 
How can you verify that your data is clean and ready to analyze? I compared the total cell entries before and after cleaning to make sure they were different. I did this with the row count as well. I spot checked a few column entries to make sure the format was consistent. Lastly, I ran a final check on blank cells.
Have you documented your cleaning process so you can review and share those results? Yes, I have created a detailed data log where I am writing all my cleaning process steps. 

Documentation of any cleaning or manipulation of data: 
I have created a Data Log to document all data changes, and also have a Master SQL Query document that lists all SQL queries that were run.
Guidelines for this case study suggested editing each monthly CSV in Google Sheets prior to merging. Peak summer datasets (e.g., July, August) exceeded Google Sheets' maximum cell and row capacity on my machine. Therefore, to maintain data integrity and a workflow, I loaded all 12 raw datasets into Google BigQuery. I then utilized SQL (UNION ALL, TIMESTAMP_DIFF, and EXTRACT functions) to calculate ride_length and day_of_week, filter erroneous negative trip durations, and merge the complete 12-month dataset in a single reproducible query

Analyze
Guiding Questions
How should you organize your data to perform analysis on it? 
I am using BigQuery to merge all 12 csv’s into one dataset due to the file size of certain months’ csv’s. I labeled each file accordingly by month before merging.
Has your data been properly formatted?
I am using SQL to perform a “UNION ALL” to merge the files, while utilizing “TIMESTAMP_DIFF” and “EXTRACT” functions to derive variables like “ride_length” and “day_of_week”
What surprises did you discover in the data?
I calculated the number of total rides, max ride length, and average ride length of casual riders and member riders. The max ride lengths for both rider types were more than 20 hours. Possibly indicating that bikes were docked incorrectly or misplaced. Casual riders have longer ride durations (double or triple of member riders), possibly due to sight seeing and leisure use. Member riders took shorter consistent trips, most likely for commuting to work. Member riders had a total of 3,552,463 rides, compared to the 1,998,694 rides of casual riders. The higher ride total and lower ride duration for members is most likely due to work commute usage. Surprisingly, member trip durations stayed between 10-15 minutes across all seasons. For casual riders, the summer and spring season brought longer ride durations. Electric bikes are used more often than regular bikes for both riders, but surprisingly, regular bikes are used for longer trip durations for casual riders.
What trends or relationships did you find in the data?
I noticed that during the summer months, casual rider volume increased dramatically.  This is most likely due to several factors like warm weather, tourism, and summer breaks from work and school. There is a noticeable winter drop (December - February) usage for casual riders. Member riders stayed at a consistent rate during the winter. Again, most likely for the commuting needs.
How will these insights help answer your business questions?
These insights address the primary research question by highlighting rider behavioral differences. Annual members exhibit consistent, shorter commute-based usage, while casual riders show significant seasonal changes in ride duration and frequency. By understanding these patterns, I can provide the data-driven needs to address the remaining two business questions. Specifically, these insights support the recommendation to target casual riders during peak seasonal periods, potentially leveraging a “summer pass” or similar introductory membership to convert these high-volume, seasonal users into long-term annual members.

Analysis summary:
My analysis reveals two distinct rider segments with clear behavioral differences. Annual members demonstrate consistent, year-round usage patterns characterized by shorter, frequent trips, strongly suggesting a commuter-focused user base. In contrast, casual riders exhibit significant seasonal fluctuations, with higher ride volumes and longer trip durations during spring and summer months, likely driven by leisure and tourism. Data anomalies such, as 20+ hour ride lengths, suggests the possible need for ongoing station/docking maintenance or bike recovery services. The primary trend indicates that casual riders utilize Cyclistic for longer-duration activity. To achieve the business objective of converting casual riders into members, marketing strategy should pivot from general awareness of the annual membership to targeted seasonal campaigns that leverage these peak usage periods, such as introducing a “summer pass” or introductory membership incentives.

Share
Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?
Yes, my analysis on the data shows distinct usage patterns between annual members and casual riders.
Annual members (commuters): Peak ride volume occurs Monday-Friday during standard rush hours(7-9 AM & 4-6 PM), with shorter, consistent trip durations averaging about 12 minutes. Confirming the primary use is for routine commuting.
Casual riders (leisure & recreation): Ride volumes surge during weekends and summer months. Trip durations are double that of member riders, about 23-28 minutes. Usage is heavily concentrated around lakefront and park stations. Confirming the primary use is for leisure, recreation, and tourism.

What story does your data tell?
The data paints a clear picture on the two types of Cyclist customers. The commuters (annual members) are predictable and routine. They rely on Cyclistic as an essential tool for urban transportation. A dependable means between work, transit hubs, and home. The explorers (casual riders) are seasonal and leisurely. They use Cyclistic for weekend activities, sight seeing, and social outings.
How do your findings relate to your original question?
My findings directly fulfill Lily Moreno's objective by establishing clear behavioral patterns for each user type. The data communicates the distinct routines and motivations behind both rider groups. Proving that annual members prioritize convenience and work commute, while casual riders prioritize leisure and adventure. These findings lay the groundwork needed to create targeted marketing campaigns.
Who is your audience? What is the best way to communicate with them?
My targeted audience is the Cyclistic executive team, which includes the Director of Marketing, Lilly Moreno and the executive leadership committee. They will decide whether to approve my recommendations for the new proposed marketing strategy campaign. The best and efficient way to communicate with them is to share visualizations from my data analysis findings. The side-by-side comparative charts will contrast the behavior patterns of both riders and my proposals will be backed by solid metrics to give leadership confidence in moving forward with the new conversion strategy.

Can data visualization help you share your findings?
Yes, data visualizations like Tableau dashboards help provide a clean and impactful presentation of data analysis findings that stakeholders can interpret in seconds. The side-by-side comparative charts, such as hourly commute spikes versus weekend volume surges, provide a clear usage pattern between annual members and casual riders. Compelling visual evidence helps leadership quickly see the rationale behind targeted marketing recommendations.
Is your presentation accessible to your audience?
Yes, my presentation fully accessible to stakeholders:
Cloud-based access & interactivity: The interactive dashboard is published on Tableau Public and can be accessed instantly via weblink. Without the need of special software or downloads, it allows the Executive Committee to explore the findings from any device. 
Inclusive & readable visual design: Charts utilize high-contrast color palette, clear typography, data labels, and descriptive tooltips so that all stakeholders can easily interpret the metrics.
Executive ready format: The layout is structured from high-level summaries to detailed breakdowns, enabling quick executive scanning while supporting deep dives during review meetings.

Act
Guiding Questions
What is your final conclusion based on your analysis?
Conclusion & Strategic Recommendations:
Core Analytical Finding:
Annual members and casual riders operate on two fundamentally different models. Members rely on Cyclistic for routine weekday commuting (~12-minute rides during rush hours), whereas casual riders use the service for recreational, leisure, and tourism purposes (peaking on weekends and during the summer, with trips averaging over 24 minutes centered around waterfront and park stations).
Top Recommendations to Convert Casual Riders:
Launch a Seasonal "Summer Pass": Introduce a specialized summer membership tier. Because casual ridership surges from June through August, a seasonal pass acts as a low-friction entry point that can hook frequent summer riders before converting them to full annual memberships.
Partner for Leisure & Tourism Perks: Bundle membership benefits with discounts at local dining, entertainment, and cultural venues near popular tourist stations (e.g., lakefront and museum hubs) to increase the perceived lifestyle value of an annual pass.
Deploy In-App Milestone & Conversion Prompts: Target repeat single-ride and day-pass users during peak weekend hours with in-app notifications showing how much they would save by upgrading to a seasonal or annual membership.

How could your team and business apply your insights?
Cyclistic can apply these insights across three key business functions to maximize conversion opportunities:
Marketing Team (Targeted Seasonal & Geofenced Campaigns):
Launch targeted digital advertising during the peak summer surge (June–August) focusing on recreational benefits rather than commuter use.
Place on-site promotional banners and digital ads at high-density casual start stations (parks, lakefronts, and entertainment hubs) promoting membership advantages.
Product & App Development Team (Smart In-App Prompts):
Build automated in-app notifications triggered when a casual user completes multiple rides in a single weekend, displaying a "Cost Comparison / Savings Breakdown" for upgrading to an annual or seasonal pass.
Introduce an introductory "Summer Pass" or flexible "Weekend Tier" directly within the app’s subscription menu.
Business Partnerships & Strategy (Lifestyle & Tourism Bundling):
Collaborate with local waterfront restaurants, museums, and entertainment venues to offer exclusive member discounts, making the annual pass attractive to leisure-oriented riders.
What next steps would you or your stakeholders take based on your findings?
The next step is to initiate planning and cross-team execution ahead of the peak summer season:
Secure Executive Approval & Budget: Present the Tableau findings to Lily Moreno and the executive committee to lock in budget allocation for seasonal marketing and partnership initiatives.
Digital Product & Pricing Development: Collaborate with the product and engineering teams to design, price, and test the "Summer Pass" or “Weekend Tier” and automated in-app conversion prompts within the Cyclistic mobile app.
Establish Local Partnerships: Begin outreach to waterfront businesses, entertainment venues, and cultural attractions to finalize member discount perks before the summer rollout.
A/B Test Campaign Messaging (Spring Pilot): Run preliminary digital ads and station promotions during April and May to evaluate which messaging (such as cost savings vs. lifestyle perks) drives the highest conversion rates before peak summer volume hits.
Monitor KPIs & Conversion Metrics: Track key performance indicators—including casual-to-member conversion rate, app upgrade prompt click-through rates, and retention rates—throughout the summer to iterate in real time.
Is there additional data you could use to expand your findings?
Integrating additional datasets beyond trip logs would provide deeper context to refine pricing, validate marketing assumptions, and build predictive models:
Pricing & Financial Transaction Data
Data points: Per-ride costs, pass upgrade history, customer lifetime value (LTV), and total spent per casual rider.
Impact: Quantifies the exact "break-even point" where a casual rider's spending exceeds the cost of an annual pass, allowing for personalized, savings-driven conversion prompts.
Rider Account & Demographic Data (Anonymized)
Data points: Unique user IDs, ZIP codes/neighborhood of residence, age brackets, and repeat ride frequencies.
Impact: Distinguishes local casual riders (high conversion potential) from one-time out of town tourists (low conversion potential) to ensure marketing budgets target local residents.
Weather & Meteorological Data
Data points: Daily temperature, precipitation, wind speed, and air quality index (AQI).
Impact: Isolates whether ridership dips are purely seasonal or driven by adverse weather events, enabling dynamic pricing or rainy-day promotions.
City Event & Holiday Schedules
Data points: Major city festivals, sports games, lakefront concerts, and federal holidays.
Impact: Identifies specific high-traffic days when casual ridership surges outside typical weekends, highlighting high-value dates for on-site promotional activations.
Public Transit & Urban Infrastructure Data
Data points: Bus and subway line routes, train station locations, and protected bike lane areas.
Impact: Highlights whether annual members use Cyclistic as "first-mile/last-mile" transit connected to commuter train stations, identifying potential bike station expansion areas.

Top 3 recommendations based on data analysis findings:
Launch a Seasonal "Summer Pass": Introduce a specialized summer membership tier. Because casual ridership surges from June through August, a seasonal pass acts as a low-friction entry point that can hook frequent summer riders before converting them to full annual memberships.
Partner for Leisure & Tourism Perks: Bundle membership benefits with discounts at local dining, entertainment, and cultural venues near popular tourist stations (e.g., lakefront and museum hubs) to increase the perceived lifestyle value of an annual pass.
Deploy In-App Milestone & Conversion Prompts: Target repeat single-ride and day-pass users during peak weekend hours with in-app notifications showing how much they would save by upgrading to a seasonal or annual membership.

Data Limitations & Future Work
While the Cyclistic trip dataset provides strong usage patterns to differentiate annual members from casual riders, certain data boundaries exist. Incorporating additional internal and external data sources would deepen future analyses and strengthen conversion strategies.
Current Data Limitations
Lack of Unique User IDs: Trip records are anonymized at the transaction level, preventing the tracking of repeat rides by individual users or measuring individual rider frequency over time.
No Demographic or Residency Indicators: Without anonymized ZIP codes or billing metadata, it is impossible to separate local casual riders (high conversion potential) from one-time out of town tourists (low conversion potential).
Absence of Pricing & Revenue Metrics: The data tracks ride duration and station usage, but does not include per-ride costs, pass purchases, or total spent per user.
Future Work & High-Impact Datasets
Financial & Transactional Integration: Incorporate rider spent data to calculate the exact financial break-even point where a casual user’s total ride costs exceed the price of an annual membership, enabling targeted "cost-savings" conversion messaging.
Weather & Meteorological Correlation: Merge local historical weather data (temperature, precipitation, wind speed) to isolate weather-driven drop-offs from seasonal behavioral trends and evaluate dynamic pass promotions during off-peak seasons.
Transit Mapping: Overlay city transit networks (bus lines, train stations, protected bike areas) via geospatial analysis to measure first-mile/last-mile commuter behavior and identify potential bike station placement for membership growth.
