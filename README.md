

<!-- toc -->

- [Node.js MongoDb CICD sample app on OpenShift!](#node.s-mongodb-cicd-verview)
  * [N](#creating-new-apps)
    + [Deploying the Pipeline](#deploy-pipeline)
    + [Success](#success)
  * [License](#license)

<!-- tocstop -->

## Node.js MongoDB CICD Overview!
-----------------

This example will serve a welcome page and the current hit count as stored in a database.


#### Deploying the Pipeline 

oc new-project nodejs-dev

oc new-project nodejs-stage

From Jenkins Project

oc policy add-role-to-user admin system:serviceaccount:cicd:jenkins -n nodejs-dev

oc policy add-role-to-user admin system:serviceaccount:cicd:jenkins -n nodejs-stage

oc process -f  https://raw.githubusercontent.com/mikes-org/nodejs-ex/master/openshift/templates/nodejs-mongo-cicd.yml -p DEV_PROJECT=nodejs-dev -p STAGE_PROJECT=nodejs-stage -o yaml | oc create -f-


#### Success

You should now have a Node.js User edit page.


### License

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
