# green-tile-project
Super important project to paint the tiles green every single day.

## What to do after clone
1. Set up git credential store
2. Set up cron job to run every single day
3. Change folder in painter.sh to your local repo directory
4. Make sure your machine turns on the time the job supposed to run. ..or just use VPS.

## Crontab Setup
1. run `crontab -e`
2. insert `1 2 3 4 5 /path/to/painter.sh`.
   example: `0 22 * * * ~/2024/green-tile-project/./painter.sh`
