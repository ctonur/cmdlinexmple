FROM python:3.9-slim-buster

COPY hello.py /app/hello.py

CMD ["python", "/app/hello.py", "arg1", "arg2"]
