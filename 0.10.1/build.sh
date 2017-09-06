#!/bin/bash
_terraform_version=$1
_terraform_tag=$2
_release_build=false

if [ -z "${_terraform_version}" ]; then
	source TERRAFORM_VERSION
	_terraform_version=$TERRAFORM_VERSION
	_terraform_tag=$TERRAFORM_VERSION
	_release_build=true
fi

echo "TERRAFORM_VERSION: ${_terraform_version}"
echo "DOCKER TAG: ${_terraform_tag}"
echo "RELEASE BUILD: ${_release_build}"

docker build --build-arg TERRAFORM_VERSION=${_terraform_version} --tag "stakater/terraform:${_terraform_tag}"  --no-cache=true .

if [ $_release_build == true ]; then
	docker tag "stakater/terraform:${_terraform_tag}" "stakater/terraform:latest"
fi