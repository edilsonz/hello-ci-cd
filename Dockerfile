# Imagen base
FROM python:3.9-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar dependencias primero para aprovechar caché de Docker
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto de la app
EXPOSE 3000

# Comando por defecto
CMD ["python", "app.py"]