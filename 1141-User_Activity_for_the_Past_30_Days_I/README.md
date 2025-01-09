# User Activity for the Past 30 Days

## Overview
This project analyzes user activity data over the past 30 days, providing insights into user engagement, session trends, and key performance indicators. The analysis helps identify active users, session duration, and engagement patterns.

## Features
- Identify active users within a specified 30-day period.
- Analyze session activities (e.g., `open_session`, `send_message`, `scroll_down`, etc.).
- Calculate user engagement metrics such as the number of sessions and activities per user.
- Visualize user trends over time for better decision-making.

## Data Description
The dataset contains the following columns:
| Column Name    | Description                              |
|----------------|------------------------------------------|
| `user_id`      | Unique identifier for the user.          |
| `session_id`   | Unique identifier for each session.      |
| `activity_date`| Date of the activity (YYYY-MM-DD).       |
| `activity_type`| Type of activity (e.g., `open_session`). |

### Sample Data
| user_id | session_id | activity_date | activity_type  |
|---------|------------|---------------|----------------|
| 1       | 1          | 2019-07-20    | open_session   |
| 1       | 1          | 2019-07-20    | scroll_down    |
| 1       | 1          | 2019-07-20    | end_session    |
| 2       | 4          | 2019-07-20    | open_session   |

## How to Use
1. **Load the Data**: Import the dataset into your environment.
2. **Set the Date Range**: Specify the 30-day period (e.g., `2019-06-28` to `2019-07-27`).
3. **Analyze User Activity**:
   - Count unique active users within the period.
   - Identify most frequent activities and users.
4. **Visualize Trends** (Optional): Use tools like Matplotlib, Power BI, or Tableau to create graphs.

## Key Concepts
- **Active User**: A user is active if they performed at least one activity within the specified 30-day period.
- **Session**: A series of activities performed by the same user in a continuous timeframe.
- **Engagement**: Measured by the number of activities or sessions per user.

## Example Queries
### Determine Active Users
Count the number of unique users with activity in the specified 30-day range.

### Identify Most Frequent Activity
Find which activity type (e.g., `scroll_down`) occurs most often during the period.

### Calculate User Sessions
Group activities by `user_id` and `session_id` to analyze session trends.

## Dependencies
- Python (with Pandas, NumPy, Matplotlib, etc.)
- SQL or database management system (for querying large datasets)
- Visualization tools (optional, e.g., Tableau, Power BI)

## Conclusion
This project helps organizations understand user behavior and optimize their services for better engagement by analyzing user activity data over the past 30 days.

## License
This project is licensed under the MIT License. See `LICENSE` for details.
