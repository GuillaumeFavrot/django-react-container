FROM python:3.10.4

WORKDIR /app

ENV SECRET_KEY=3s8475xnpmh6ec7%3%^vnrhyh4!c$k_qr()_lh1*8+tr=%flno
ENV MONGO_URI=mongodb+srv://Guillaume:guigui845@cluster0.qicsa.mongodb.net/?retryWrites=true&w=majority

COPY . .

RUN pip3 install -r ./requirements.txt

ENTRYPOINT [ "sh", "entrypoint.sh" ]