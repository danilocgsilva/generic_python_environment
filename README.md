# Simple Python recipe

This is a simple Python recipe to a Docker container:

* Based on Debian
* Custom user
* Allow ssh to normal ssh connection

If you need to access the container through ssh, you shall look into the `Dockerfile` file to check the default user and password.

This project also ships the `.devcontainer` folder to allow the container development. And it is primarily tested using the `Devpod` and `VS Codium` stack, them you won't have to rely on commercial tools that might lead to restrictive vendor lock-in.
