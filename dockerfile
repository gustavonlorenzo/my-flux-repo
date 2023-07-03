FROM python:latest

COPY ./clusters/my-cluster/pytest/pytest.py /

CMD ["/pytest.py"]