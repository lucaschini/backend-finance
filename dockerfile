# Usando imagem Python slim
FROM python:3.13-slim

# Setando diretório de trabalho
WORKDIR /app

# Copiando arquivos de dependências
COPY requirements.txt .

# Instalando dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código da app
COPY . .

# Expõe porta 8000 onde o FastAPI roda
EXPOSE 8000

# Comando para rodar o Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]