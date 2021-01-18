FROM python:latest
MAINTAINER Sagar <"kalesp95@gmail.com">
COPY . /app
WORKDIR /app
EXPOSE 5000
ONBUILD RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

