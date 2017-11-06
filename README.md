CAS Gradle Overlay for LDAP
============================

This project is a fork of [apereo's CAS Gradle Overlay Template](https://github.com/apereo/cas-gradle-overlay-template). It produices a war file for CAS with LDAP support.



The following command generate the war file :

     ./gradlew clean build

You need to set cas-gradle-ldap/cas/src/main/webapp/WEB-INF/cas.properties file before generate

The produiced war is then available in ``cas/build/libs/cas.war``. To customize the war, add or change ``cas/src/main/webapp/``.
