#!/bin/bash
# Ask for new client information.
echo Generating new client:
echo Insert client ID:
read id_client
echo Insert client email:
read email_client
echo Insert client name:
read name_client
echo Insert client surname:
read surname_client
echo "<customer>
<id>$id_client</id>
<email>$email_client</email>
<name>$name_client</name>
<surname>$surname_client</surname>
</customer>" > new.client

ansible-playbook newclient.yml

rm new.client