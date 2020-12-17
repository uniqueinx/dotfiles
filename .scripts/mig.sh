mar_id=$(docker ps | grep mari | cut -d' ' -f1)
docker cp $HOME/Downloads/mariadb.zip $mar_id:/
docker exec -it $mar_id bash # -c 'zcat mariadb.zip | mysql -u root -p123 matajer'