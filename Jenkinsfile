node {
   stage('Checkout') { // for display purposes
      checkout scm
   }
   stage('Build') {
      sh 'mvn -version'
      sh 'mvn clean package -U -Dmaven.test.skip=true'
      stash includes: 'target/*.jar', name: 'targetfiles'
      echo 'Build is completed successfully'
   }
    stage('Build Docker Image') {
      // build docker image
      unstash 'targetfiles'
      sh "docker build -t awsdocker789/helloworldkube ."   
    }
       stage('Pushed Docker Image to Registry') {
      // push docker image
      sh "docker login -u awsdocker789 -p Kumar@2568"
      sh "docker push awsdocker789/helloworldkube:latest"
    } 
    stage('Deploy Docker Image to minikube'){
       // deploy docker image to Kubernetes
      sh "kubectl apply -f deployment-service.yml"
      echo "Docker Image pushed to minikube"
      echo "K8s apllication is up and running successfully"
    }
   }
