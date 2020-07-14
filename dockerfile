# どのイメージを基にするか
FROM nginx
# 作成したユーザの情報
LABEL maintainer="Masato <masato.m.1995.0116@gmail.com>"
# RUN: docker buildするときに実行される
RUN apt-get update -y
RUN apt-get  install -y vim unzip curl php-cli php-mbstring git 
RUN php -r "copy（ 'https://getcomposer.org/installer'、 'composer-setup.php'）;"
RUN php -r "if（hash_file（ 'sha384'、 'composer-setup.php'）=== 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a'）{echo 'Install' echo'Install 'error'Installer'確認された 'エコー'インストーラー '確認された'エコー 'インストーラー'; php '）;} echo PHP_EOL; "
RUN php composer-setup.php
RUN php -r "unlink（ 'composer-setup.php'）;"

ENTRYPOINT ["myapps"]

# CMD: docker runするときに実行される
CMD echo "now running..."