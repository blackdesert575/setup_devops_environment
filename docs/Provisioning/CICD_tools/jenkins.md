# jenkins

## Guides/tips/...etc

* [github.com/blackdesert575/jenkins-101](https://github.com/blackdesert575/jenkins-101)
* [Jenkins](https://www.jenkins.io/)
* [github.com/jenkinsci/jenkins/blob/master/CONTRIBUTING.md](https://github.com/jenkinsci/jenkins/blob/master/CONTRIBUTING.md)
* [gitlab-plugin](https://plugins.jenkins.io/gitlab-plugin/)

* [architecture](https://www.jenkins.io/doc/developer/architecture/)
* [persistence](https://www.jenkins.io/doc/developer/persistence/)


* [What password encryption Jenkins is using?](https://stackoverflow.com/questions/25547381/what-password-encryption-jenkins-is-using)
```groovy
// Source - https://stackoverflow.com/a/30953269
// Posted by tartakynov, modified by community. See post 'Timeline' for change history
// Retrieved 2026-02-26, License - CC BY-SA 4.0

import hudson.util.Secret

def secret = Secret.fromString("your password")
println(secret.getEncryptedValue())
```
