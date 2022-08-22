FROM python:3.10.4

WORKDIR /app

COPY . .

ENV SECRET_KEY=django-insecure-q6u%$7ciav_aczkn1gqo-3f)otnm$+auesz)2w55ncrl&6aivs

ENV MONGO_URI=mongodb+srv://Guillaume:guigui845@cluster0.qicsa.mongodb.net/?retryWrites=true&w=majority

RUN pip3 install -r ./requirements.txt

CMD [ "gunicorn", "./backend.wsgi:application", "--bind 0.0.0.0:8000"]

EXPOSE 8000