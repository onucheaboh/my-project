FROM python:3.9-buster

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .


EXPOSE 5000

CMD ["flask", "run"] 