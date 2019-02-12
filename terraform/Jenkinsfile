pipeline {
 agent any
 
 stages {
 stage('Checkout') {
 steps {
 cleanWs()
 git branch : 'feature-terraform', url: 'https://github.com/atul7107/Terraform.git'
 }
 }
  
stage('Set Terraform Path') {
 steps {
 script {
 def tfHome = tool name: 'Terraform'
 env.PATH = "${tfHome}:${env.PATH}"
 }
 sh 'terraform version'
 } 
 }
  
 stage('Provision infrastructure on AWS') {
 
 steps {
  script {
 sh 'terraform init'
 sh 'terraform plan -out=plan'
 sh 'terraform apply plan'  
 //sh 'terraform destroy -force' 
 }
}
}
}
}
