# Instructions to Pull this Image from Docker Hub
```
sudo docker pull eracle/docker-prophet-coiled
```
Run the console within the container. 

```
sudo docker run -it eracle/docker-prophet-coiled /bin/bash
```

You will end up at the command prompt inside the prophet docker container.
From here, you can run python and start with the prophet commands within.

```
python app.py 
```
will run the example at the Prophet Quickstart Page : https://facebook.github.io/prophet/docs/quick_start.html


# Instructions to Build and Run this Image
```
sudo docker build --tag=docker-prophet-coiled .
```
This will build a docker image that when launched will run in the background. 
You can modify the Dockerfile to include the libraries as you wish. 

Enjoy!


