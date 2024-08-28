FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

RUN python -m nltk.downloader stopwords
RUN python -m nltk.downloader punkt

COPY . /app/

RUN python manage.py collectstatic --noinput
# RUN chmod +x entrypoint.sh
CMD bash ./entrypoint.sh
