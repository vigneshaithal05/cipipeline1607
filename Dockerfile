FROM ubuntu
#Label Maintainer : Give some URL
LABEL MAINTAINER all-images@devops.com
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
run mkdir /code
copy Sample.sh /code/Sample.sh
run chmod +x /code/Sample.sh
run echo "Building an image.."
run echo $imaage_variable
#To create the directory
workdir /code
cmd sh /code/Sample.sh
