#

dependency: lib/j2ep-datafari.jar 
	mkdir -p mvn-repo
	mvn install:install-file -Dfile=lib/j2ep-datafari.jar -DgroupId=net.sf.j2ep -DartifactId=j2ep-datafari -Dversion=1.0.0 -Dpackaging=jar -DlocalRepositoryPath=mvn-repo
	mvn install:install-file -Dfile=mcf/war/mcf-api-service.war -DgroupId=org.apache.manifoldcf -DartifactId=mcf-api-service -Dversion=0.0.x -Dpackaging=war -DlocalRepositoryPath=mvn-repo
	mvn install:install-file -Dfile=mcf/war/mcf-authority-service.war -DgroupId=org.apache.manifoldcf -DartifactId=mcf-authority-service -Dversion=0.0.x -Dpackaging=war -DlocalRepositoryPath=mvn-repo
	mvn install:install-file -Dfile=mcf/war/mcf-crawler-ui.war -DgroupId=org.apache.manifoldcf -DartifactId=mcf-crawler-ui -Dversion=0.0.x -Dpackaging=war -DlocalRepositoryPath=mvn-repo

run: dependency
	mvn -Dsolr.solr.home=solr/solr_home -Dorg.apache.manifoldcf.configfile=mcf/mcf_home/properties.xml clean tomcat7:run

clean:
	mvn clean
	rm -R mvn-repo
