#!/bin/bash

## primary/core erddap server
find $PWD/erddap_xml/mule_erddap_dataset/ -type f -name '*.xml' -exec cat {} + > datasets.xml
cp -f datasets.xml /opt/tomcat/content/erddap/

## dev erddap server
find $PWD/erddap_xml/mule_erddap_dataset_development/ -type f -name '*.xml' | sort | xargs cat > datasets.xml
cp -f datasets.xml /opt/tomcat_dev/content/erddap/

## product erddap server
find $PWD/erddap_xml/mule_erddap_dataset_products/ -type f -name '*.xml' -exec cat {} + > datasets.xml
cp -f datasets.xml /opt/tomcat_prod/content/erddap/