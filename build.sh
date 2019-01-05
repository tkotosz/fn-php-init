#!/bin/sh

tar -cf init.tar Dockerfile func.init.yaml func.php
docker build -t tkotosz/fn-php-init -f Dockerfile-init-image .
