#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=Ahmed \
    -Dsonar.projectName='Ahmed' \
    -Dsonar.host.url=http://13.235.18.63:9000 \
    -Dsonar.token=squ_12da3eee5d706d8dab530428b3c4199715ffd846
else
  echo "Running Maven without SonarQube"
  mvn clean verify
fi
