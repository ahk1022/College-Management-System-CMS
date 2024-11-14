@Library("shared") _
pipeline{
    
    agent { label "ahk" }
    
    
    stages{
    
        stage("code"){
            
            steps{
                
                echo "code cloning"
                script{
                    clone("https://github.com/ahk1022/College-Management-System-CMS.git","master")
                }
            }
        }
        stage("build"){
            steps{
                
                echo "code build"
                docker_build("cms-app","latest","ahk3983")
                   
            }
        }
        stage("Pust to DockerHub"){
            
            steps{
                script{
                    
                    docker_push("cms-app","latest","ahk3983")
                }
            }
        }
        stage("deploy"){
            steps{
                
                echo "deploy stage"
                sh "docker compose up"
            }
        }
    }
    
}
