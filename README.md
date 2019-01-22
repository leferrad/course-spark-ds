Course Spark DS
===============

Resources for course: "Spark and Python for Data Science"


**Docker**

To run a Docker container to setup an environment ready to be used through Jupyter notebooks, follow these instructions:

```
# Steps:
# 1) Build container (just once)
# $ docker build -f Dockerfile -t sparkds .
# 2) Run container (every time needed)
# $ docker run -d -p 8888:8888 --name sparkds sparkds:latest
# -> On browser go to http://localhost:8888 and access with password 'sparkds123'
# 3) Access to bash of container
# $ docker exec -it sparkds bash
# 4) Stop container
# $ docker stop sparkds
```
