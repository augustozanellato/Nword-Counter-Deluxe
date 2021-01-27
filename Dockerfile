FROM python:3.9
ADD REQUIREMENTS.txt /
RUN pip install -r REQUIREMENTS.txt
ADD commands.py /
ADD config.py /
ADD error_handlers.py /
ADD main.py /
CMD [ "python", "-u", "./main.py" ]
