# 1. Python ka base image use karenge
FROM python:3.9-slim

# 2. Container ke andar ek working directory banayenge
WORKDIR /app

# 3. GitHub ka saara code container ki /app directory mein copy karenge
COPY . /app

# 4. Flask ko install karenge 
RUN pip install flask

# 5. App 5000 port par chalegi, toh use expose karenge
EXPOSE 5000

# 6. App ko run karne ki command (Dhyan rahe, agar aapki file ka naam app.py hai toh yahi use karein. Agar main.py hai toh yahan change kar lein)
CMD ["python", "app.py"]
