# Datafari

I've been trying to install [datafari](https://github.com/francelabs/datafari). They propose packages for debian distribution or windows, but no straightforward solution for developers.

In this project, you can install their solution with maven commands. Dependencies have been reduced to a bare minimum. As there are more than two commands to launch, I wrapped them in a simple Makefile command.

Please execute the following, and then browse to http://localhost:8080/Datafari (with the uppercase 'D'). Pay attention that you can change your host and port in the pom.xml, but some web pages have these values hardcoded in the datafari project. As I'm not an expert with solr, or manifold, contact Francelabs team if you have any question ;)

```
make run
```

### Dependencies

So far, I'd say you just need to have maven and a jdk installed on your computer.

### Optimization

Effective project size from the original project has been reduced from around 264 MB to around 210MB (I've excluded the windows and debian7 folders to compare sizes).

### Admin

Default password is @PASSWORD@. In Francelabs packages, the installer allows to change it. In this project, you can change it in `src/main/tomcatconf/tomcat-users.xml` and `mcf/mcf_home/properties.xml` (the latter for manifold)

Gabriel
