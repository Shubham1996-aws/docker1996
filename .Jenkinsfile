node('master')
{
 stage('Checkout') 
{
    git 'https://github.com/Shubham1996-aws/docker1996.git'
  
}

stage('Building Image') 
{
    sh 'docker build -t shubhamaken/myimage2 .'
  
}
stage('Push Image to DockerHub') 
{
    withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerhubpwd')]) {
    sh "docker login -u shubhamaken -p ${dockerhubpwd}"
}
   
   sh 'docker push shubhamaken/myimage2'
  
}
}


