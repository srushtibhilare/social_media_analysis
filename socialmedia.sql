by history raw dataste sql is running properly tell me now whqat to do next di i have to connect with powerbi or more sql queries DROP TABLE IF EXISTS social_media_posts;

CREATE TABLE social_media_posts (
    post_id VARCHAR(50) PRIMARY KEY,
    platform VARCHAR(50),
    content_type VARCHAR(50),
    topic VARCHAR(50),
    language VARCHAR(10),
    region VARCHAR(100),
    post_datetime DATE,
    hashtags TEXT,
    views BIGINT,
    likes BIGINT,
    comments BIGINT,
    shares BIGINT,
    engagement_rate FLOAT,
    sentiment_score FLOAT,
    is_viral INT,
    post_year INT,
    post_month INT,
    post_day INT,
    post_hour INT,
    hashtag_count INT,
    total_engagement BIGINT,
    engagement_per_1k_views FLOAT,
    sentiment_label VARCHAR(20)
);






\copy social_media_posts(
    post_id,
    platform,
    content_type,
    topic,
    language,
    region,
    post_datetime,
    hashtags,
    views,
    likes,
    comments,
    shares,
    engagement_rate,
    sentiment_score,
    is_viral,
    post_year,
    post_month,
    post_day,
    post_hour,
    hashtag_count,
    total_engagement,
    engagement_per_1k_views,
    sentiment_label
)
FROM 'C:/Users/srush/OneDrive/Documents/final_social_media_analytics_dataset.csv'
DELIMITER ','
CSV HEADER;


SELECT datname FROM pg_database;







CREATE DATABASE social_media_db;



DROP TABLE IF EXISTS social_media_posts;






CREATE TABLE social_media_posts (
    post_id VARCHAR(50) PRIMARY KEY,
    platform VARCHAR(50),
    content_type VARCHAR(50),
    topic VARCHAR(50),
    language VARCHAR(10),
    region VARCHAR(100),
    post_datetime DATE,
    hashtags TEXT,
    views BIGINT,
    likes BIGINT,
    comments BIGINT,
    shares BIGINT,
    engagement_rate FLOAT,
    sentiment_score FLOAT,
    is_viral INT,
    post_year INT,
    post_month INT,
    post_day INT,
    post_hour INT,
    hashtag_count INT,
    total_engagement BIGINT,
    engagement_per_1k_views FLOAT,
    sentiment_label VARCHAR(20)
);



SELECT COUNT(*) FROM social_media_posts;



SELECT * 
FROM social_media_posts
LIMIT 5;



SELECT *
FROM social_media_posts
WHERE is_viral = 1
LIMIT 10;



SELECT post_id, platform, likes
FROM social_media_posts
ORDER BY likes DESC
LIMIT 10;


SELECT AVG(engagement_rate) AS avg_engagement_rate
FROM social_media_posts;



SELECT platform, COUNT(*) AS total_posts
FROM social_media_posts
GROUP BY platform;



SELECT 
    COUNT(*) AS total_rows,
    COUNT(post_id) AS non_null_post_id,
    COUNT(platform) AS non_null_platform,
    COUNT(views) AS non_null_views
FROM social_media_posts;


SELECT post_id, COUNT(*)
FROM social_media_posts
GROUP BY post_id
HAVING COUNT(*) > 1;


SELECT post_id, platform, total_engagement
FROM social_media_posts
ORDER BY total_engagement DESC
LIMIT 10;

SELECT platform, AVG(engagement_rate) AS avg_engagement
FROM social_media_posts
GROUP BY platform
ORDER BY avg_engagement DESC;

SELECT 
    platform,
    ROUND(100.0 * SUM(is_viral) / COUNT(*), 2) AS viral_percentage
FROM social_media_posts
GROUP BY platform;

SELECT post_year, post_month, COUNT(*) AS total_posts
FROM social_media_posts
GROUP BY post_year, post_month
ORDER BY post_year, post_month;

