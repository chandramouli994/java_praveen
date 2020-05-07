node {
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build with maven') {
      sh 'mvn -version'
      sh 'mvn clean package -U -Dmaven.test.skip=true'
      echo 'Build is completed successfully'
   }
    stage('Build Docker Image') {
      // build docker image
      sh "docker build -t awsdocker789/helloworldkube ."   
    }
       stage('Push Docker Image to Registry') {
      // push docker image
      sh "docker login -u awsdocker789 -p Kumar@2568"
      sh "docker push awsdocker789/helloworldkube:latest"
    } 
    stage('Deploy Docker Image to Kubernetes'){
       // deploy docker image to Kubernetes
      sh "kubectl apply -f deployment-service.yml"
      echo "Docker Image pushed to Kubernetes"
      echo "K8s application is up and running successfully"
    }
   }
