# JDK Data Container
FROM anapsix/alpine-java:8u121b13_jdk
COPY allfiles/ /usr/local/bin/
EXPOSE 8097
RUN ln -s usr/local/bin/Job_run_template.sh / # backwards compat
ENTRYPOINT ["/usr/local/bin/Job_run_template.sh"]
EXPOSE 8097