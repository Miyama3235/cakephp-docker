#Dockerfile

#使うDockerイメージ
FROM mysql

LABEL maintainer="Masato <masato.m.1995.0116@gmail.com>"

#ポートを開ける
EXPOSE 3306

#MySQL設定ファイルをイメージ内にコピー
ADD ./sql.cnf /etc/mysql/conf.d/my.cnf

#docker runに実行される
CMD ["mysqld"]


