# Average Time of Process per Machine

This SQL solution calculates the average time taken by each machine to complete its processes using data from the `Activity` table. Each process includes a `start` and `end` timestamp, and the solution determines the average processing time for each machine.

## Problem Description

The `Activity` table contains the following columns:

| Column Name    | Data Type  | Description                                                 |
|----------------|------------|-------------------------------------------------------------|
| `machine_id`   | `INTEGER`  | The ID of the machine.                                       |
| `process_id`   | `INTEGER`  | The ID of the process running on the machine.               |
| `activity_type`| `ENUM`     | Type of activity: `start` or `end`.                         |
| `timestamp`    | `FLOAT`    | The time in seconds when the activity occurred.             |

### Requirements
1. Calculate the time taken for each `(machine_id, process_id)` pair as `end_timestamp - start_timestamp`.
2. Compute the average processing time for each `machine_id`.
3. Round the results to 3 decimal places.


