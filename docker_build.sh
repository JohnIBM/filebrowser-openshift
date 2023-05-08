git clone https://github.com/johnibm/filebrowser-openshift.git
cd filebrowser-openshift
podman build --format docker --build-arg VERSION=v2.23.0 --tag filebrowser:openshift .
