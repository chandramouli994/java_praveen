node {
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build with maven') {
      sh 'mvn -version'
      sh 'mvn clean package -U -Dmaven.test.skip=true'
      echo 'Build is completed successfully' 
   }
   }
