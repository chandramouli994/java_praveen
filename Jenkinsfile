node {
   def jdkHome
   def mvnHome
   
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build') {
   jdkHome = tool 'jdk'
      mvnHome = tool 'maven'
      ArtifactName = readMavenPom().getArtifactId()
   Version = readMavenPom().getVersion()
      echo "Code quality analysis : ${mvnHome}"
      echo 'Build is completed successfully'
      echo "artifactId : ${ArtifactName}"
      echo "Version : ${Version}"
        sh 'mvn -version'
      try{
         configFileProvider([configFile(fileId: 'UUID', variable: 'MAVEN_GLOBAL_SETTINGS')])
      sh 'mvn clean -gs $MAVEN_GLOBAL_SETTINGS deploy -U -Dmaven.test.skip=true'
        currentBuild.result = 'SUCCESS'
    }
      catch(e){
      currentBuild.result = 'FAILURE'
                echo "ERROR: ${e}"
            } finally {
               emailNotification() 
            }
   }
   }
def emailNotification() {
   emailext (
      to: 'haridasuvenkatesh@gmail.com',
      subject: "Status of pipeline: ${currentBuild.fullDisplayName}",
      body: "${BUILD_URL} has result ${currentBuild.currentResult}"
     )
 }
