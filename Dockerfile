From python
EXPOSE 5000
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN mkdir -p /opt/app-root
WORKDIR /opt/app-root
ONBUILD COPY app.py app.py
ONBUILD COPY requirements.txt /opt/app-root
ONBUILD RUN pip install -r requirement.txt
CMD ["python", "app.py"]
