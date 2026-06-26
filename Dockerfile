FROM python:3.12-slim
LABEL authors="krish"
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirement.txt
EXPOSE 5000
CMD ["python", "app.py"]