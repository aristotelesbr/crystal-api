# Use a imagem base do Crystal
FROM crystallang/crystal:1.8

WORKDIR /app

COPY shard.* ./

RUN shards install

COPY . .

RUN crystal build --release --no-debug src/app.cr

EXPOSE 3000

CMD ["./app", "-p", "3000"]

