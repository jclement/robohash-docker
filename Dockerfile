FROM python:2.7.18
WORKDIR /code
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
RUN git clone https://github.com/e1ven/Robohash.git
RUN pip install -r Robohash/requirements.txt
EXPOSE 80
CMD ["/usr/local/bin/python", "Robohash/robohash/webfront.py"]