FROM python:latest as multistager
MAINTAINER Sagar <"kalesp95@gmail.com">
COPY . /app
WORKDIR /app
EXPOSE 5000
ONBUILD RUN pip install -r requirements.txt
RUN echo "Base images built succussfully."

FROM multistager
RUN echo "Building child image..."
ENTRYPOINT ["python"]
CMD ["app.py"]

