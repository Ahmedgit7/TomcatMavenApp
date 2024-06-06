#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=Ahmed \
    -Dsonar.projectName='Ahmed' \
    -Dsonar.host.url=http://3.110.186.80:9000 \
    -Dsonar.token=sqp_7722079c289d3fad20b7d0796884099765042e0a
else
  echo "running maven without sonarqube"
  mvn clean verify
fi
