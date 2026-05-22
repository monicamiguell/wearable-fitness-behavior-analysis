/* combining sleep qualiity v activity segment */
CREATE OR REPLACE VIEW `fitness_analysis.sleep_quality_analysis` AS

SELECT
  a.activity_segment,

  sm.user_id,

  sm.date,

  sm.sleep_stage,

  COUNT(*) AS duration_minutes,

  MAX(ss.sum_steps_day) AS daily_steps

FROM `fitness_analysis.Sleep_Minutes` sm

JOIN `fitness_analysis.Sleep_Steps` ss
  ON sm.user_id = ss.user_id
  AND sm.date = ss.date

JOIN `fitness_analysis.activity_segments` a
  ON sm.user_id = a.user_id

GROUP BY
  a.activity_segment,
  sm.user_id,
  sm.date,
  sm.sleep_stage;

  /* combining sleep quantity v activity segment */
CREATE OR REPLACE VIEW `fitness_analysis.sleep_quantity_analysis` AS

SELECT
  a.activity_segment,

  ss.user_id,

  ss.date,

  ss.minute_asleep_day,

  ss.sum_steps_day

FROM `fitness_analysis.Sleep_Steps` ss

JOIN `fitness_analysis.activity_segments` a
  ON ss.user_id = a.user_id;


