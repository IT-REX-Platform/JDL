for file in *.jdl; do 
    jhipster import-jdl $file --force --with-entities
done