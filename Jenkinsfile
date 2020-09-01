node {
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build with maven') {
      sh 'mvn -version'
      sh 'mvn clean package -U -Dmaven.test.skip=true'
      echo 'Build is completed successfully' 
   }
   stage('running')
   {
      sh "cp /root/.jenkins/workspace/Javapraveenbuild  /tmp/"
      echo "moved file successfully"
      sh "/tmp/"
      echo"done"
   }
}
