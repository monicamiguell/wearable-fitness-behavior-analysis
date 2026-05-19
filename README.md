# wearable-fitness-behavior-analysis
Behavioral and recovery analysis of wearable fitness users using SQL, BigQuery, and Looker Studio.

# Wearable Fitness Recovery & Activity Analysis

## Overview
This project explored behavioral patterns in wearable fitness users to understand how activity levels relate to sleep duration, recovery behavior, and engagement trends.

The analysis focused on segmenting users into low, moderate, and high activity groups using wearable fitness data and SQL-based behavioral analysis.

## Business Question
How do activity behaviors relate to recovery and sleep patterns in wearable fitness users?

## Tools Used
- SQL
- BigQuery
- Looker Studio
- Kaggle Dataset

## Methodology
The dataset included daily activity metrics, sleep tracking data, and step intensity metrics.

SQL views were created to:
- segment users by activity level
- analyze sleep quantity
- evaluate sleep stage distribution

Users were categorized into:
- Low Activity
- Moderate Activity
- High Activity

based primarily on average daily step counts.

## Key Findings

### 1. Moderate activity represented the largest user segment
Most users fell into low-to-moderate activity categories.

### 2. Sleep duration varied across activity levels
Moderate activity users demonstrated more consistent sleep duration patterns.

### 3. Sleep stage distributions differed by activity segment
Highly active users demonstrated different recovery patterns compared to low activity users.

### 4. Behavioral data creates opportunities for personalized wellness insights
The analysis suggests opportunities for:
- recovery recommendations
- personalized engagement features
- adaptive wellness insights

## Dashboard
[View Full Dashboard PDF](wearable_fitness_dashboard.pdf)
[Insert dashboard screenshot here]

## Future Improvements
Potential future enhancements include:
- A/B testing analysis
- retention analysis
- heart rate recovery modeling
- personalized recommendation systems
