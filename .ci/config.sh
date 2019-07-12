#!/bin/bash

#set -o verbose
#set -o xtrace

beta_config() {
sed -i \
        -e "s/db_host/$BETA_DB_HOST/g" \
        -e "s/db_usr/$BETA_DB_USR/g" \
        -e "s/db_pwd/$BETA_DB_PWD/g" \
    example-web/src/main/resources/config/datasource.properties        # 项目源码的配置文件
sed -i \
        -e "s/redis_host/$BETA_REDIS_HOST/g" \
        -e "s/redis_port/$BETA_REDIS_PORT/g" \
        -e "s/redis_pwd/$BETA_REDIS_PWD/g" \
    example-web/src/main/resources/config/redis.properties             # 项目源码的配置文件
}

prod_config() {
sed -i \
        -e "s/db_host/$PROD_DB_HOST/g" \
        -e "s/db_usr/$PROD_DB_USR/g" \
        -e "s/db_pwd/$PROD_DB_PWD/g" \
    example-web/src/main/resources/config/datasource.properties
sed -i \
        -e "s/redis_host/$PROD_REDIS_HOST/g" \
        -e "s/redis_port/$PROD_REDIS_PORT/g" \
        -e "s/redis_pwd/$PROD_REDIS_PWD/g" \
    example-web/src/main/resources/config/redis.properties
}

if [[ "$CI_JOB_STAGE" == "beta-build" ]];then
	beta_config
elif [[ "$CI_JOB_STAGE" == "prod-build" ]];then
	prod_config
else
	echo "error: undefined CI_JOB_STAGE!"
fi