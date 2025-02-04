FROM python:3.12

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-w", "25", "-b", "0.0.0.0:5000", "zluqet:app"]