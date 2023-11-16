FROM python:3.10-slim

ENV PYHTONUNBUFFERED=1

# set the working directory
WORKDIR /usr/src/app

# install dependencies
COPY ./requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the src to the folder
# COPY ./src ./src

# start the server

# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

# CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]