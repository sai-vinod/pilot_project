FROM tiangolo/uwsgi-nginx-flask:python3.10

RUN pip install --upgrade pip && \
    pip --no-cache-dir install \
	pandas \
	numpy \
	scikit-learn \
	matplotlib \
	seaborn

COPY main.py ./

CMD ["python", "main.py"]