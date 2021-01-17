From python
EXPOSE 5000
RUN mkdir -p /opt/app-root
WORKDIR /opt/app-root
ONBUILD COPY requirements.txt /opt/app-root
ONBUILD RUN pip install -r requirement.txt
ONBUILD COPY src/ .
CMD ["python", "/opt/app-root/app.py"]
