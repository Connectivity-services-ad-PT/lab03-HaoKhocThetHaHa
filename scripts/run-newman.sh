#!/bin/bash
mkdir -p reports
npx newman run postman/collections/FIT4110_lab03_iot_ingestion.postman_collection.json \
  -e postman/environments/FIT4110_lab03_mock.postman_environment.json \
  -r cli,junit,htmlextra \
  --reporter-junit-export reports/newman-report.xml \
  --reporter-htmlextra-export reports/newman-report.html