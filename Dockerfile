
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
COPY requirements.txt /app
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY . /
WORKDIR /api/v1
CMD ["sh","run.sh"]
