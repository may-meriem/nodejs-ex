

<!-- toc -->

- [Node.js MongoDb CICD sample app on OpenShift!](#node.s-mongodb-cicd-verview)
  * [Deploying the Pipeline](#deploy-pipeline)
  * [Success](#success)
  * [License](#license)

<!-- tocstop -->

## Node.js MongoDB CICD Overview!
-----------------

This example nodejs Openshift CICD Pipeline demonstrates the following:
* Deploying an applicaiton from a YAML template using parameters
* Configuring a custom Jenkins Slave using an ConfigMap
* Promoting an application to multiple environments
* Configuring a Nodejs Application to use a MongoDB service using Secrets.


### Deploying the Pipeline 
The following will assume Jenkins will be running in the development project.  The Jenkins instance will be deployed automatically since a pipeline is created assuming this has not been diabled.  You use an existing jenkins project and have the dev a seperate dev project.  In this case you will need to give the Jenkins user rights to the dev project.

        $ oc new-project nodejs-dev

          oc new-project nodejs-stage

          oc policy add-role-to-user admin system:serviceaccount:nodejs-dev:jenkins -n nodejs-stage

          oc process -f  https://raw.githubusercontent.com/mikes-org/nodejs-ex/master/openshift/templates/nodejs-mongo-cicd.yml -p                    DEV_PROJECT=nodejs-dev -p STAGE_PROJECT=nodejs-stage -o yaml | oc create -f-

### Success

After the pipeline has completed you should now have an application that contains a User edit page.


### License

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
