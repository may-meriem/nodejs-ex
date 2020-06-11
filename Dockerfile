FROM repo-nexus.apps.demo.att.mikelacourseocp.com/ocp/jenkins-agent-base:4.3

RUN echo "Hello World" && touch /opt/data.txt
