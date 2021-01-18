FROM python
EXPOSE 5000
RUN mkdir -p /opt/app-root
RUN chgrp -R 0 /opt/app-root && chmod -R g=u /opt/app-root
COPY app.py app.py
WORKDIR /opt/app-root
ONBUILD COPY app.py app.py
ONBUILD COPY requirements.txt /opt/app-root
ONBUILD RUN pip install -r src/requirements.txt

CMD ["python", "src/app.py"]
