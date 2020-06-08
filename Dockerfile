FROM python:3
EXPOSE 5500
COPY . .
ENV FLASK_APP js_example
RUN export FLASK_APP=js_example
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -e .
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0" ]
