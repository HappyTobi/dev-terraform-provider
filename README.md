# Simple terraform provider development setup
Simple terraform provider development setup.
The project helps to spin up a terraform development environment to get a simple and easy start.

# About
The project should help to setup a terraform provider development environment

# Setup
Read the MS Devcontainer [installation guide]((https://code.visualstudio.com/docs/devcontainers/containers#_installation))

# Start developing
To run the development you have to do the following steps:
- Read the MS Devcontainer [installation guide]((https://code.visualstudio.com/docs/devcontainers/containers#_installation))
- Checkout the project
`git checkout http://github.com/happytobi/dev-terraform-provider.git/`
- Add your Subscription / credentials to the `./devcontainer/devcontainer.env` file
- Start project at devcontainer
- Navigate to examples / or put your own custom terraform code.
- Change / add new stuff the code at the terraform-provider (add a small time out before the required breakpoints to get more time to connect to time.Sleep(10 * time.Second)
- Build the terraform-provider (take some minutes) \
    `cd /workspace/dev-terraform-provider && make binary`
- Start the terraform plan or apply action: \
`terraform apply -auto-approve`
- Start debugger in parrallel and select the running terraform-provider process. \
    `ps | grep terraform | grep -v "grep" `
