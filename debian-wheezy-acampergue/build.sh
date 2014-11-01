CONTAINER_NAME=$(pwd | awk -F / '{print $NF}')
sudo docker build -t ${CONTAINER_NAME} .
