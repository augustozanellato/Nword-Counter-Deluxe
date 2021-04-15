FROM python:3.9

RUN apt update && apt install -y rustc cargo

RUN pip install poetry
RUN poetry config virtualenvs.create false
COPY poetry.lock pyproject.toml README.md /

RUN poetry install -n --no-root

ADD commands.py /
ADD config.py /
ADD error_handlers.py /
ADD main.py /
CMD [ "python", "-u", "./main.py" ]
