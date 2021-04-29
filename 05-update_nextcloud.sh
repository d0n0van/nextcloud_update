#!/bin/bash
setenforce 0;
sudo -u apache php /opt/nextcloud/updater/updater.phar --no-interaction;
sudo -u apache php /opt/nextcloud/occ app:update --all;
sudo -u apache php /opt/nextcloud/occ db:add-missing-indices;
sudo -u apache php /opt/nextcloud/occ db:add-missing-columns;
setenforce 1;
