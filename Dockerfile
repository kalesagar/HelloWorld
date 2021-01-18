FROM python
EXPOSE 5000
RUN mkdir -p /opt/app-root
COPY app.py app.py
WORKDIR /opt/app-root
ONBUILD COPY app.py app.py
ONBUILD COPY requirements.txt /opt/app-root
ONBUILD RUN pip install -r requirement.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
