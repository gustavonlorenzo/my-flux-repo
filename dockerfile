FROM python:latest

COPY ./pytest/pytest.py /

RUN /pytest.py