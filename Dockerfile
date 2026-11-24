FROM python:3.12-slim
WORKDIR /root
COPY . .

RUN apt-get update && \
    apt-get install -y --no-install-recommends openssl bash curl ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x app.py && \
    pip install Flask requests

CMD ["python3", "/root/app.py"]