                script { 
                    def imageName = "<Your image Name>"
                    env.imageName = "${imageName}"
                    def oldImageID = sh( 
                                            script: 'docker images -qf reference=\${imageName}:\${imageTag}',
                                            returnStdout: true
                                        )

                    echo "Image Name: " + "${imageName}"
                    echo "Old Image: ${oldImageID}"

                    if ( "${oldImageID}" != '' ) {
                        echo "Deleting image id: ${oldImageID}..."
                         sh "docker rmi -f ${oldImageID}"
                    } else {
                        echo "No image to delete..."
                        } 
                    }  
                }
