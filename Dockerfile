FROM python:3
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /app
COPY requirements.txt /app/myFlaskBlog/
WORKDIR /app/myFlaskBlog
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
