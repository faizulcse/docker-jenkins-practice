node("master") {

    stage("Checkout Repository") {
        checkoutRepo()
    }

    stage("Build Docker Image") {
        echo "Build Docker Image"
    }

    stage("Run Tests") {
        echo "Run Tests"
    }

    stage("Generate Test Reports") {
        echo "Generate Test Reports"
    }

    stage("Delete Container and Docker Image") {
        echo "Delete Container and Docker Image"
    }

    stage("Publish Reports to Jenkins Build from Workspace") {
        echo "Publish Reports to Jenkins Build from Workspace"
    }

    stage("Send Slack notification with results") {
        echo "Send Slack notification with results"
    }
}