# dockerfile-terraform
Dockerfile for terraform 

# What is terraform

Terraform provides a common configuration to launch infrastructure — from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

[Terraform](https://www.terraform.io/)


It's purpose is to run any terraform based project that is placed in the container. You can enter any command required to build your project other than the `terraform` commands as well (e.g. make etc.) 

## Usage

### Creating a Container:

```
docker run -d --name stakater_terraform -v /etc/myTerraformCode:/usr/src/app stakater/terraform
```

### Running Your Code:
To run your code, pass commands to the docker container using `exec`

```
docker exec stakater_terraform /bin/bash -c "cd /usr/src/app; <command here>" 
```

e.g. 
```
docker exec stakater_terraform /bin/bash -c "cd /usr/src/app; terraform apply" 
```

OR

```
docker exec stakater_terraform /bin/bash -c "cd /usr/src/app; make myApp" 
```


