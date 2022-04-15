FROM python:3.8

COPY ./requirements.txt ./config/requirements.txt
RUN pip install -r config/requirements.txt
RUN apt update
RUN apt install -y fonts-takao-gothic
# https://ysko909.github.io/posts/install-japanese-font-to-docker-cotainer/
# https://qiita.com/hatorijobs/items/c503840c13672e12d188
# https://qiita.com/f0o0o/items/c2f74ac1d27e48d0fed1
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user 
RUN jupyter nbextension enable codefolding/main
#RUN jupyter contrib nbextensions migrate
