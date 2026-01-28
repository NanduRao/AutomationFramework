pipeline {
    agent any
    tools { dotnet 'dotnet-6' }
    stages {
        stage('Checkout') { steps { checkout scm } }
        stage('Restore Dependencies') { steps { sh 'dotnet restore' } }
        stage('Build') { steps { sh 'dotnet build --configuration Release' } }
        stage('Run Tests') { steps { sh 'dotnet test --no-build --verbosity normal' } }
    }
}