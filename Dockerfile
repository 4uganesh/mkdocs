FROM python:3.11-slim

RUN pip install mkdocs

WORKDIR /app

COPY mkdockerize.sh .

RUN chmod +x mkdockerize.sh

ENTRYPOINT ["./mkdockerize.sh"]