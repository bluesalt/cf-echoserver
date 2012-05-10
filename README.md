cf-echoserver
=============
cf-echo-service only provides service metadata. The physical service is provides
by echoserver, a simple server written in java.
Just like echo_node and echo_gateway, Senthil Vaiyapuri also provides a implementation
of echoserver in his blog, 
http://support.cloudfoundry.com/entries/20485171-how-to-add-a-system-service-to-cloud-foundry-step-by-step-guide

However, it only listens on localhost. When you deploy echo service in a distributed cluster, that could cause a 
problem.It won't work unless echoserver and dea are depoyed in the same machine.Luckily, on a line of code need to be
modified.This project contains the modified codes.

buildr is used to build the package.
