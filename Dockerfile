# Use a imagem base do Crystal
FROM crystallang/crystal:1.8

# Crie o diretório de trabalho
WORKDIR /app

# Copie o arquivo shard.yml e shard.lock para o diretório de trabalho
COPY shard.* ./

# Install shards
RUN shards install

# Copie o código fonte para o diretório de trabalho
COPY . .

# Compile o aplicativo
RUN crystal build --release --no-debug src/app.cr

# Exponha a porta em que o aplicativo estará em execução
EXPOSE 3000

# Defina o comando de inicialização do aplicativo
CMD ["./app", "-p", "3000"]

