📊 Social Media Engagement Analytics Dashboard (Power BI)
📌 Overview

This project showcases an interactive Power BI dashboard built to analyze social media engagement data.
It provides insights into likes, comments, shares, engagement trends, viral content, sentiment analysis, and platform-wise performance.

The dashboard helps decision-makers understand what type of content performs best, which platforms drive engagement, and how audience sentiment varies across regions and time.

🎯 Project Objectives

Analyze overall social media engagement

Compare performance across different platforms

Identify viral vs non-viral content

Understand sentiment distribution of posts

Track engagement trends over time

🗂️ Dataset Description

The dataset contains structured social media post data with the following attributes:

Post Information:
post_id, content_type, topic, hashtags, hashtag_count

Engagement Metrics:
likes, comments, shares, total_engagement, engagement_rate

Platform Details:
platform, region, language

Time Features:
post_datetime, post_day, post_month, post_year, post_hour

Sentiment Analysis:
sentiment_label, sentiment_score

Viral Indicator:
is_viral

🛠️ Tools & Technologies

Power BI Desktop

DAX (Data Analysis Expressions)

Data Modeling

Data Visualization

Basic Data Cleaning

🧮 DAX Calculations
📌 Calculated Columns
YearMonth = FORMAT('public social_media_posts'[post_datetime], "YYYY-MM")

EngagementScore =
'public social_media_posts'[likes] +
'public social_media_posts'[comments] +
'public social_media_posts'[shares]

📌 Measures
Total Likes = SUM('public social_media_posts'[likes])

Total Comments = SUM('public social_media_posts'[comments])

Total Shares = SUM('public social_media_posts'[shares])

Total Engagement = SUM('public social_media_posts'[EngagementScore])

Avg Engagement Rate = AVERAGE('public social_media_posts'[engagement_rate])

Viral Percentage =
DIVIDE(
    CALCULATE(COUNTROWS('public social_media_posts'),
    'public social_media_posts'[is_viral] = 1),
    COUNTROWS('public social_media_posts')
)

📊 Dashboard Components
🔢 KPI Metrics

Total Likes

Total Comments

Total Shares

Average Engagement Rate

Total Engagement

📈 Visualizations

Likes by Platform (Bar Chart)

Engagement Trend Over Time (Line Chart)

Viral vs Non-Viral Posts (Pie Chart)

Content Type Distribution

Sentiment Distribution

Top 10 High-Engagement Posts (Table)

🎛️ Filters (Slicers)

Platform

Language

Region

Content Type

Year

📌 Dashboard Title

Social Media Engagement Analytics Dashboard

🚀 How to Use

Download the .pbix file

Open it using Power BI Desktop

Use slicers to filter data dynamically

Hover over visuals to view detailed insights

📈 Key Insights

Identifies top-performing platforms

Highlights viral content patterns

Shows engagement growth and decline over time

Reveals sentiment trends by region and platform

📁 Repository Structure
📂 Social-Media-Engagement-Dashboard
 ├── 📊 PowerBI_Dashboard.pbix
 ├── 📄 README.md
 └── 📂 Dataset
      └── social_media_posts.csv

👩‍💻 Author

Srushti Bhilare
Engineering Student | Data Analytics & Power BI Enthusiast

⭐ If you like this project

Give it a ⭐ on GitHub — it really helps!
