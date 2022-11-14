# Simple terraform provider development setup
The simple terraform provider development setup help to spin up a development environment to get simple and easy start into the terraform provider development.

# About
The project should help to setup a terraform provider development environment

# Setup
Read the MS Devcontainer [installation guide]((https://code.visualstudio.com/docs/devcontainers/containers#_installation))

# Start developing
To run the development you have to do the following steps:
- Read the MS Devcontainer [installation guide]((https://code.visualstudio.com/docs/devcontainers/containers#_installation))
- Checkout the project recursive
`git checkout --recursive http://github.com/happytobi/dev-terraform-provider.git/`
- Add your Subscription / credentials to the `./devcontainer/devcontainer.env` file
- Start project at devcontainer
- Navigate to examples / or put your own custom terraform code.
- Change / add new stuff the code at the terraform-provider (add a small time out before the required breakpoints to get more time to connect to time.Sleep(10 * time.Seconds))
- Build the terraform-provider \
    `cd /workspace/dev-terraform-provider && make build`
- Start the terraform plan or apply action: \
`terraform apply -auto-approve`
- Start debugger in parrallel and select the running terraform-provider process. \
    `ps | grep terraform | grep -v "grep" `
