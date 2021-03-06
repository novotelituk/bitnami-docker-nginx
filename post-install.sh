#!/bin/bash
cd $BITNAMI_APP_DIR

# Backup default conf/html
mv conf conf.defaults
mv html html.defaults

# Create an empty html directory
mkdir -p html

# Setup mount point symlinks
ln -s $BITNAMI_APP_DIR/conf $BITNAMI_APP_VOL_PREFIX/conf
ln -s $BITNAMI_APP_DIR/logs $BITNAMI_APP_VOL_PREFIX/logs
ln -s $BITNAMI_APP_DIR/html /app

# Log to stdout
ln -sf /dev/stdout $BITNAMI_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $BITNAMI_APP_VOL_PREFIX/logs/error.log
