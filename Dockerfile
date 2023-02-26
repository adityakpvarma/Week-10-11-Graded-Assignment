FROM python:3.10-bullseye

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN python code_model_training/train.py

EXPOSE 5000

CMD python ./app.py