#!/bin/bash
set -e

mongosh <<EOF
db = db.getSiblingDB('2mb2d')

db.createUser({
  user: '$MONGO_INITDB_ROOT_USERNAME',
  pwd: '$MONGO_INITDB_ROOT_PASSWORD',
  roles: [{ role: 'readWrite', db: '2mb2d' }],
});
db.createCollection('member')
db.createCollection('seat')
db.createCollection('team')

EOF
