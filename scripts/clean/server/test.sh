#!/usr/bin/env sh

for i in $(seq 1 6); do
  dropdb "peertube_test$i"
  rm -rf "./test$i"
  rm -f "./config/local-test.json"
  rm -f "./config/local-test-$i.json"
  createdb "peertube_test$i"
done
