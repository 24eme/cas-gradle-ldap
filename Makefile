all: cas/src/main/webapp/css/bootstrap.css build

build:
	./gradlew clean build

clean:
	./gradlew clean

cas/src/main/webapp/css/bootstrap.css: cas/src/main/webapp/less/bootstrap.less
	lessc cas/src/main/webapp/less/bootstrap.less cas/src/main/webapp/css/bootstrap.css
