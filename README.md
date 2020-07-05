# Setup
- Download and run jenkins as WAR (tested with Jenkins 2.235.1)
- Install plugins: Pipeline, Job DSL
- To hide initial 'seed' job (which generates all jobs and views) from Anonymous:
- Jenkins > Configure Global Security
- Select Project-based Matrix Authorization Strategy. For Authenticated: allow all. 
For Anonymous: Read/View (for 'Job' additionally: Build, Cancel)
- Create freestyle project (example name can be 'seed').
- In 'seed' job configuration: Enable project-based security > Inheritance Strategy: Do not inherit permission grants from other ACLs
- Configure SCM git to pull repo containing jobs.groovy (or whatever file has Job DSl defined)
- Add Build step: Process Job DSLs. Select 'Look on Filesystem' and point to jobs.groovy

# To uninstall jenkins
- Stop jenkins.war, delete folder ~/.jenkins