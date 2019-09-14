FROM python:3.6-alpine

WORKDIR /app
COPY ./ ./
RUN pip install -r requirements.txt

CMD ["nosetests"]
# CMD ["bash", "deploy.sh"]