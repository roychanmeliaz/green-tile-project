#!/bin/bash
cd /root/project/green-tile-project/
echo 'Tile at location'  `date` 'painted' >> report.txt
git pull
git add .
git commit -m "Painting tile at `date`"
git push origin main
