
FROM python:3.7

WORKDIR /app

RUN pip install pipenv

COPY . .

COPY Pipfile Pipfile.lock /app/

RUN pipenv install --system --deploy

EXPOSE 5000

CMD ["python", "app.py"]
