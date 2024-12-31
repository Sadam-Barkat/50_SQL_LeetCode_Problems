WITH ProcessTimes AS (
    -- Step 1: Calculate the time taken for each process
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) - 
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS process_time
    FROM Activity
    GROUP BY machine_id, process_id
),
AverageTimes AS (
    -- Step 2: Calculate the average processing time per machine
    SELECT 
        machine_id,
        ROUND(AVG(process_time), 3) AS processing_time
    FROM ProcessTimes
    GROUP BY machine_id
)
-- Step 3: Return the result
SELECT machine_id, processing_time
FROM AverageTimes;
