#!/bin/sh

/usr/bin/mongod &
touch tail.target
tail -f tail.target
