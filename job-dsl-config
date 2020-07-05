pipelineJob('job1') {
  concurrentBuild(false)
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
  concurrentBuild(false)
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
  concurrentBuild(false)
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
