// this script is used by JOB-DSL plugin in jenkins to regenerate jobs
pipelineJob('job1') {
//  properties {
//    disableConcurrentBuilds()
//  }
  logRotator {
    numToKeep(5)
  }
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('git@github.com:fretfan/gradle-vue-boot-jenkins.git')
          }
          branch('*/master')
        }
      }
      lightweight()
      scriptPath('Jenkinsfile2')
    }
  }
}

pipelineJob('job2') {
//  properties {
//    disableConcurrentBuilds()
//  }
  logRotator {
    numToKeep(5)
  }
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('git@github.com:fretfan/gradle-vue-boot-jenkins.git')
          }
          branch('*/master')
        }
      }
      lightweight()
      scriptPath('Jenkinsfile2')
    }
  }
}

pipelineJob('job3') {
//  properties {
//    disableConcurrentBuilds()
//  }
  logRotator {
    numToKeep(5)
  }
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('git@github.com:fretfan/gradle-vue-boot-jenkins.git')
          }
          branch('*/master')
        }
      }
      lightweight()
      scriptPath('Jenkinsfile2')
    }
  }
}
