function aws --description 'SSH into AWS VM for EECS 340 Project 2'
        ssh -i ~/shared_data/Private_Data/Security/EECS340Project2.pem \
            ec2-user@(cat ~/shared_data/Private_Data/Security/aws_server.txt) \
            $argv
end
