FROM python:3
EXPOSE 5000
COPY setup.py /web/
COPY ./js_example /web/js_example/
WORKDIR /web
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install flask
ENV FLASK_APP "js_example"
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0" ]
