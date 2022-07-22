FROM python:3.10.2
WORKDIR /app
COPY requirements/base.txt ./requirements/requirements.txt
RUN pip install --upgrade pip -r ./requirements/requirements.txt
COPY ./src ./src
CMD ["uvicorn", "src.app.main:app", "--host", "0.0.0.0", "--port", "8080"]
