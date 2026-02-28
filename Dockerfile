# 1️⃣ Base Image
FROM python:3.11-slim

# 2️⃣ Set Working Directory
WORKDIR /app

# 3️⃣ Copy Requirements First (for Docker cache optimization)
COPY requirements.txt .

# 4️⃣ Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy Application Code
COPY app/ app/

# 6️⃣ Expose Port
EXPOSE 8000

# 7️⃣ Start Application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]