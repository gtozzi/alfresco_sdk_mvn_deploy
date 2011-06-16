#!/bin/sh

# This script will upload the Alfresco SDK artifacts to a local Maven repository.

ALFRESCO_SDK_VERSION=3.3.5
ALFRESCO_SDK_CLASSIFIER=enterprise

MAVEN_REPOSITORY_URL=scpexe://maven.cs.athabascau.ca/var/lib/maven
MAVEN_REPOSITORY_ID=athabascau-repository

TMP_DIR=/tmp/alfresco-sdk


mkdir -p ${TMP_DIR}
unzip -u -o ~/Download/alfresco-enterprise-sdk-${ALFRESCO_SDK_VERSION}.zip -d ${TMP_DIR}/


# Third party libraries patched by Alfresco.

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/acegi-security-0.8.2_patched.jar -DgroupId=acegisecurity -DartifactId=acegi-security -Dversion=0.8.2 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/cxf-2.2.2-patched.jar -DgroupId=org.apache.cxf -DartifactId=cxf -Dversion=2.2.2 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/chiba-1.3.0-patched.jar -DgroupId=org.chiba -DartifactId=chiba -Dversion=1.3.0 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/freemarker-2.3.16-patched.jar -DgroupId=org.freemarker -DartifactId=freemarker -Dversion=2.3.16 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/greenmail-1.3-patched.jar -DgroupId=com.icegreen -DartifactId=greenmail -Dversion=1.3 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/hibernate-3.2.6-patched.jar -DgroupId=org.hibernate -DartifactId=hibernate -Dversion=3.2.6.ga -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/ibatis-2.3.4.726-patched.jar -DgroupId=com.ibatis -DartifactId=ibatis2 -Dversion=2.3.4.726 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/tika-parsers-0.6-patched.jar -DgroupId=org.apache.tika -DartifactId=tika-parsers -Dversion=0.6 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/tm-extractors-1.0-patched.jar -DgroupId=org.textmining -DartifactId=tm-extractors -Dversion=1.0 -Dpackaging=jar -Dclassifier=alfresco
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/wss4j-1.5.4-patched.jar -DgroupId=org.apache.ws.security -DartifactId=wss4j -Dversion=1.5.4 -Dpackaging=jar -Dclassifier=alfresco


# Third party libraries not in the Maven Central repository.

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/bcprov-jdk15-137.jar -DgroupId=org.bouncycastle -DartifactId=bcprov-jdk15 -Dversion=1.37 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/bliki-3.0.2.jar -DgroupId=info.bliki.wiki -DartifactId=bliki-core -Dversion=3.0.2 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/cglib-nodep-2.2_beta1.jar -DgroupId=cglib -DartifactId=cglib-nodep -Dversion=2.2_beta1 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/chemistry-abdera-0.5-SNAPSHOT.jar -DgroupId=org.apache.chemistry.abdera -DartifactId=chemistry-abdera -Dversion=0.5-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/facebook_070716.jar -DgroupId=com.facebook.api -DartifactId=facebook-java-api -Dversion=070716 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/hrtlib.jar -DgroupId=com.vladium -DartifactId=hrtlib -Dversion=1.0 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/jooconverter-2.1.0.jar -DgroupId=net.sf.jooreports -DartifactId=jooconverter -Dversion=2.1.0 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/jutf7-1.0.0.jar -DgroupId=com.beetstra -DartifactId=jutf7 -Dversion=1.0.0 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/PDFRenderer-2009-09-27.jar -DgroupId=com.sun.pdf-renderer -DartifactId=pdf-renderer -Dversion=2009-09-27 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/poi-3.7-SNAPSHOT-20100204.jar -DgroupId=org.apache.poi -DartifactId=poi -Dversion=3.7-SNAPSHOT-20100204 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/poi-scratchpad-3.7-SNAPSHOT-20100204.jar -DgroupId=org.apache.poi -DartifactId=poi-scratchpad -Dversion=3.7-SNAPSHOT-20100204 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/poi-ooxml-3.7-SNAPSHOT-20100204.jar -DgroupId=org.apache.poi -DartifactId=poi-ooxml -Dversion=3.7-SNAPSHOT-20100204 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/poi-ooxml-schemas-3.7-SNAPSHOT-20100204.jar -DgroupId=org.apache.poi -DartifactId=poi-ooxml-schemas -Dversion=3.7-SNAPSHOT-20100204 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/subetha-smtp.jar -DgroupId=org.subethamail -DartifactId=subethasmtp -Dversion=1.2 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/truezip.jar -DgroupId=de.schlichtherle.io -DartifactId=truezip -Dversion=5.1.2 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/xmlrpc.jar -DgroupId=marquee -DartifactId=xmlrpc -Dversion=1.3 -Dpackaging=jar

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/jbpm/jbpm-jpdl-3.3.1.jar -DgroupId=org.jbpm -DartifactId=jbpm-jpdl -Dversion=3.3.1 -Dpackaging=jar

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/google/gdata-core-1.0.jar -DgroupId=com.google.gdata -DartifactId=gdata-core-1.0 -Dversion=1.41.5 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/google/gdata-client-1.0.jar -DgroupId=com.google.gdata -DartifactId=gdata-client-1.0 -Dversion=1.41.5 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/google/gdata-media-1.0.jar -DgroupId=com.google.gdata -DartifactId=gdata-media-1.0 -Dversion=1.41.5 -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/google/gdata-docs-3.0.jar -DgroupId=com.google.gdata -DartifactId=gdata-docs-3.0 -Dversion=1.41.5 -Dpackaging=jar

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-surf-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-surf -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-surf-api-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-surf-api -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-surf-core-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-surf-core -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-surf-core-configservice-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-surf-core-configservice -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-webscripts-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-webscripts -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-webscripts-1.0.0.CI-SNAPSHOT-tests.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-webscripts -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar -Dclassifier=tests
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/dependencies/spring-surf/spring-webscripts-api-1.0.0.CI-SNAPSHOT.jar -DgroupId=org.springframework.extensions.surf -DartifactId=spring-webscripts-api -Dversion=1.0.0.CI-SNAPSHOT -Dpackaging=jar


# Alfresco libraries for which the SDK does not supply source.

mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/alfresco-jndi-client-${ALFRESCO_SDK_VERSION}.jar -DgroupId=org.alfresco -DartifactId=alfresco-jndi-client -Dversion=${ALFRESCO_SDK_VERSION} -Dpackaging=jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/alfresco-jlan-embed-${ALFRESCO_SDK_VERSION}.jar -DgroupId=org.alfresco -DartifactId=alfresco-jlan-embed -Dversion=${ALFRESCO_SDK_VERSION} -Dpackaging=jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/alfresco-linkvalidation.jar -DgroupId=org.alfresco -DartifactId=alfresco-linkvalidation -Dversion=${ALFRESCO_SDK_VERSION} -Dpackaging=jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -Dfile=${TMP_DIR}/lib/server/alfresco-mbeans-${ALFRESCO_SDK_VERSION}.jar -DgroupId=org.alfresco -DartifactId=alfresco-mbeans -Dversion=${ALFRESCO_SDK_VERSION} -Dpackaging=jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}


# Alfresco libraries and source from the SDK.

mkdir -p alfresco-core/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-core-src.zip 'java/*' -d alfresco-core/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-core/pom.xml -Dfile=${TMP_DIR}/lib/server/alfresco-core-${ALFRESCO_SDK_VERSION}.jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-core/pom.xml -Dfile=${TMP_DIR}/src/alfresco-repository-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-core/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-repository-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-deployment/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-deployment-src.zip 'java/*' -d alfresco-deployment/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-deployment/pom.xml -Dfile=${TMP_DIR}/lib/server/alfresco-deployment-${ALFRESCO_SDK_VERSION}.jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-deployment/pom.xml -Dfile=${TMP_DIR}/src/alfresco-deployment-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-deployment/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-deployment-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-remote-api/src/main/java
mkdir -p alfresco-remote-api/src/main/generated
unzip -u -o ${TMP_DIR}/src/alfresco-remote-api-src.zip 'java/*' -d alfresco-remote-api/src/main
unzip -u -o ${TMP_DIR}/src/alfresco-remote-api-src.zip 'generated/*' -d alfresco-remote-api/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-remote-api/pom.xml -Dfile=${TMP_DIR}/lib/server/alfresco-remote-api-${ALFRESCO_SDK_VERSION}.jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-remote-api/pom.xml -Dfile=${TMP_DIR}/src/alfresco-remote-api-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-remote-api/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-remote-api-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-repository/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-repository-src.zip 'java/*' -d alfresco-repository/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-repository/pom.xml -Dfile=${TMP_DIR}/lib/server/alfresco-repository-${ALFRESCO_SDK_VERSION}.jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-repository/pom.xml -Dfile=${TMP_DIR}/src/alfresco-repository-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-repository/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-repository-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-share/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-share-src.zip 'java/*' -d alfresco-share/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-share/pom.xml -Dfile=${TMP_DIR}/src/alfresco-share-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-share/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-share-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-web-client/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-web-client-src.zip 'java/*' -d alfresco-web-client/src/main
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-web-client/pom.xml -Dfile=${TMP_DIR}/lib/server/alfresco-web-client-${ALFRESCO_SDK_VERSION}.jar -Dclassifier=${ALFRESCO_SDK_CLASSIFIER}
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-web-client/pom.xml -Dfile=${TMP_DIR}/src/alfresco-web-client-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-web-client/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-web-client-doc.zip -Dclassifier=javadoc

mkdir -p alfresco-web-service-client/src/main/java
unzip -u -o ${TMP_DIR}/src/alfresco-web-service-client-src.zip -d alfresco-web-service-client/src/main/java
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-web-service-client/pom.xml -Dfile=${TMP_DIR}/src/alfresco-web-service-client-src.zip -Dclassifier=sources
mvn deploy:deploy-file -Durl=${MAVEN_REPOSITORY_URL} -DrepositoryId=${MAVEN_REPOSITORY_ID} -DpomFile=alfresco-web-service-client/pom.xml -Dfile=${TMP_DIR}/doc/alfresco-web-service-client-doc.zip -Dclassifier=javadoc
