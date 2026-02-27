FROM python:3.11-slim

# 🔧 POPRAWIONA LINIJKA - musi być /app a nie ./
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
