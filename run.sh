#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=Ahmed \
    -Dsonar.projectName='Ahmed' \
    -Dsonar.host.url=[ADD URL] \
    -Dsonar.token=[ADD TOKEN]
else
  echo "Running Maven without SonarQube"
  mvn clean verify
fi
