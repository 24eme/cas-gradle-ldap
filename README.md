CAS Gradle Overlay for LDAP
============================

This project is a fork of [apereo's CAS Gradle Overlay Template](https://github.com/apereo/cas-gradle-overlay-template). It produices a war file for CAS with LDAP support.

The following command generate the war file :

     ./gradlew clean build

The produiced war is then available in ``cas/build/libs/cas.war``. To customize the war, add or change ``cas/src/main/webapp/``.


## Problems

 * ``org.gradle.internal.resolve.ModuleVersionNotFoundException: Could not find org.jasig.cas:cas-server-webapp:X.Y.Z-SNAPSHOT``

The CAS version is not available anymore : verify the available versions here : ``https://oss.sonatype.org/content/repositories/snapshots/org/jasig/cas/cas-server-webapp/`` and set the new version in the file ``gradle.properties``

 * ``Could not determine java version from 'XX.YY.ZZ'.``

Check ``jre`` is installed.

Run ``./gradlew clean build --stacktrace`` if you obtain ``java.lang.IllegalArgumentException: Could not determine java version``, you probably have an outdated version of gradle. Use version > 4.7 in ``gradle.properties`` and change the corresponding url in ``gradle/wrapper/gradle-wrapper.properties``.


