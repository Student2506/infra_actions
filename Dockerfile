FROM python:3.8

LABEL maintainer="Pavel Zakharov <pzakharov83@gmail.com>"

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "infra_project/manage.py", "runserver", "0:5000"]