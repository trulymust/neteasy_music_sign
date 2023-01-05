FROM python:3.7-slim
MAINTAINER Sage (sagelovemio@qq.com)

WORKDIR /app
COPY . ./
RUN ln -sf /dev/stdout /app/run.log

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
CMD ["python", "main.py"]