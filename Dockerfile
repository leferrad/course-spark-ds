FROM python:3.6

ENV WD /root

WORKDIR ${WD}

# Install dependencies
RUN apt update && \
	apt install -y ant git nano python3-pip openjdk-8-jdk && \
	# Fix certificates problems, following: https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/983302
	apt install -y ca-certificates-java && \
	# Install supervisor to manage processes
	apt install -y supervisor && \
	apt clean && \
	update-ca-certificates -f && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

# Setup env var JAVA_HOME, used by Spark
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# Upgrade pip before start installing libraries
RUN pip3 install --upgrade pip

# Install mandatory Python dependencies for this environment
RUN pip3 install -e requirements.txt

# Generate configuration files for Jupyter
RUN jupyter notebook --generate-config

# Copy a predefined file to access to Jupyter. See http://jupyter-notebook.readthedocs.io/en/latest/public_server.html
COPY config/jupyter_notebook_config.json /root/.jupyter/

# Setup supervisor
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8888

CMD ["/usr/bin/supervisord"]