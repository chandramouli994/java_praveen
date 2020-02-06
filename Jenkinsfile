node {
   def jdkHome
   def mvnHome
   
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build') {
   jdkHome = tool 'jdk'
      mvnHome = tool 'maven'
      sh 'mvn -version'
      sh 'mvn clean package -U -Dmaven.test.skip=true'
      echo 'Build is completed successfully'
   }
   }
