#!/bin/bash

mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf~

if ! [ -d /etc/nginx/conf.d/stream.d ]; then
  mkdir /etc/nginx/conf.d/stream.d
fi

cp -rv ./conf.d/stream.d/ /etc/nginx/conf.d
cp -v ./nginx.conf /etc/nginx/nginx.conf
