#!/bin/bash
set -e
real_path=$( cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"; pwd)
cd $real_path;pwd;
mvn clean package -Dmaven.test.skip=true
cd shade; ls -lha
cd target;
unzip -l shade-1.0.0-SNAPSHOT.jar | grep class
unzip -l shade-1.0.0-SNAPSHOT-sources.jar | grep java


