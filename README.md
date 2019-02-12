Course Spark DS
===============

Resources for course: "Python and Spark for Data Science" at Fligoo.


### Description

> This course will be taught during the working time at Fligoo as a disclosure of the work done in Data Science projects, and its goal is to introduce the main content of Apache Spark to learn how to correctly use it to manipulate data with Python.

**Classes:** Wed & Fri 2:30PM to 3:30PM UTC-3

**Lecturers:** 
- [@leferrad](https://github.com/leferrad) (Leandro Ferrado)
- [@martinpella](https://github.com/martinpella) (Martín Pellarolo)


### Scope

- Use of PySpark
- RDD operations
- DataFrame API
- Pandas UDF 
- Basic configuration
- Build data pipelines


### Dependencies

The workspace of this course is designed for Python 3.5+ and its main dependencies are Apache Spark and Pandas. The rest of them are listed in `requirements.txt` (at least the essential ones).

### Setup

**Docker**

To install Docker, here are some guides for each OS:

- **Linux (debian based):** https://docs.docker.com/install/linux/docker-ee/ubuntu/
- **Windows:** https://docs.docker.com/docker-for-windows/install/
- **MacOS:** https://docs.docker.com/docker-for-mac/install/

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


### Resources

- [Cognitive Class **PY0101EN** - Python for Data Science](https://cognitiveclass.ai/courses/python-for-data-science/)
- [Cognitive Class **BD0211EN** - Spark Fundamentals I](https://cognitiveclass.ai/courses/what-is-spark/)
- [Udemy - The Ultimate Hands-On Hadoop - Tame your Big Data!](https://www.udemy.com/the-ultimate-hands-on-hadoop-tame-your-big-data/)
- [Learning Spark [Book]](https://www.oreilly.com/library/view/learning-spark/9781449359034/)