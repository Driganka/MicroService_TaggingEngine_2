FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./api/v1 /app/src
COPY requirements.txt /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt


#CMD ["sh","run.sh"]
CMD ["uvicorn", "api.v1.index:app", "--host=0.0.0.0", "--reload"]
