FROM python:latest

COPY pytest.py /

RUN /pytest.py