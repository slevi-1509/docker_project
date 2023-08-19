FROM python:3
WORKDIR app
COPY start.py .
CMD [ "python3", "start.py" ]

