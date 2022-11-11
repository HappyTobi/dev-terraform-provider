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
- Add your subscription / credentials to the `./devcontainer/devcontainer.env` file
- Start the devcontainer
- Navigate to examples or put your custom code somewhere else.
- Change the code at the terraform-provider and call `cd /workspace/dev-terraform-provider && make build`
- Set breakpoints at the terraform-provider
- Start `terraform apply -auto-approve`
- Start debugger in parrallel and select the running terraform-provider process. \
    `ps | grep terraform | grep -v "grep" `
