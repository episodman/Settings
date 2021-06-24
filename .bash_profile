source $HOME/.bashrc

export PATH="$PATH:~/src/flutter_sdk/flutter/bin"
# docker
id 1000
export XDG_RUNTIME_DIR=/tmp/docker-$(id -u)
export PATH=/vol/users/$USER/bin:$PATH
export PATH=$PATH:/sbin
export DOCKER_HOST=unix:///tmp/docker-$(id -u)/docker.sock

