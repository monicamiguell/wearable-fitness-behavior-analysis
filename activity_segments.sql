/*hypothesis: What behavioral patterns are associated with healthier recovery and engagement metrics in wearable fitness users?*/

/* define active users */

CREATE OR REPLACE VIEW `fitness_analysis.activity_segments` AS

WITH user_activity AS (

  SELECT
    am.user_id,

    AVG(
      am.very_active_minutes +
      am.fairly_active_minutes
    ) AS avg_active_min,

    AVG(am.sedentary_minutes) AS avg_sed_min,

    AVG(i.sum_steps_day) AS avg_daily_steps

  FROM `fitness_analysis.daily_activity` am

  JOIN `fitness_analysis.Daily_Step_Intensity` i
    ON am.user_id = i.user_id
    AND am.date = i.date

  GROUP BY am.user_id

)

SELECT
  user_id,

  ROUND(avg_active_min, 2) AS avg_active_min,

  ROUND(avg_sed_min, 2) AS avg_sed_min,

  ROUND(avg_daily_steps, 2) AS avg_daily_steps,

  CASE
    WHEN avg_daily_steps < 5000 THEN 'Low Activity'

    WHEN avg_daily_steps BETWEEN 5000 AND 10000
      THEN 'Moderate Activity'

    ELSE 'High Activity'
  END AS activity_segment

FROM user_activity;