#!/bin/sh

echo hello
curl http://localhost:3000
echo
echo

echo set value
curl "http://localhost:3000/store/my-key?some=value&some-other=other-value"
echo
echo

echo get value
curl http://localhost:3000/my-key
echo
echo
