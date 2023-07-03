FROM python:latest

COPY ./clusters/my-cluster/pytest/pytest.py /

RUN /pytest.py