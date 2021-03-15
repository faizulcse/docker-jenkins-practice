node('master'){
    def containerName="tc-${env.BUILD_NUMBER}"
    def reportsLocation = "/docker_tc_reports"

    stage("Checkout Repository") {
        checkout scm
    }

    stage("Build Docker Image") {
            sh './script/ci imageBuild'
            sh "echo \$docker ps -a"
    }
//
//    stage("Run Tests") {
//        withCredentials([[$class: 'UsernamePasswordMultiBinding',
//                          credentialsId: 'a38b467d-2e26-4b56-bc90-afa4e5d3d5ef',
//                          passwordVariable: 'IAPI_KEY',
//                          usernameVariable: 'USERNAME']]){
//            def exitCode = sh script:'./script/ci testRun '+containerName, returnStatus:true
//
//            // If any tests fail, Jenkins will exit with code 1,
//            // which prevents the reporting script from running. Let's mark
//            // the build as unstable instead.
//            if (exitCode == 1) {
//                currentBuild.result = "UNSTABLE"
//            }
//        }
//    }
//
//    stage("Generate Test Reports") {
//        sh 'mkdir '+"${env.WORKSPACE}"+reportsLocation
//        sh './script/ci copyReportsToJenkins '+containerName+' '+reportsLocation
//    }
//
//    stage("Delete Container and Docker Image") {
//        sh './script/ci removeContainer '+containerName
//        sh './script/ci removeImage'
//    }
//
//    stage("Publish Reports to Jenkins Build from Workspace") {
//        publishHTML([
//                allowMissing: false,
//                alwaysLinkToLastBuild: true,
//                keepAll: true,
//                reportDir: "${env.WORKSPACE}"+reportsLocation,
//                reportFiles: '*.html',
//                reportName: 'HTML Report',
//                reportTitles: ''])
//    }
}