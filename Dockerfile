FROM apache/airflow:2.5.1

USER root
RUN apt-get update
RUN apt-get install -y python3-dev default-libmysqlclient-dev build-essential

USER airflow
RUN pip install --user --upgrade pip
RUN pip install mysqlclient