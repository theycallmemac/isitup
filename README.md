# isitup

Something small I made to play around with [OpenFaaS](https://github.com/openfaas/faas).

If you don't want to bother with setup and installation, just can just run:

`curl --data $URL faas.jamesmcdermott.ie/function/isitup`

and it should just work.

### Requirements

If you want to see how these run, you need to:

1. [Install Docker](https://docs.docker.com/install/)
2. [Install the OpenFaas CLI and create a single node Docker Swarm](https://docs.openfaas.com/deployment/docker-swarm/)


### Deploying

Once you have both of the steps in the above section completed, you're ready to build and then deploy. This is as easy as running `faas build -f isitup.yml` followed by `faas deploy -f isitup.yml`.

From there you can go to `http://$YOUR_IP_ADDRESS:8080/` to view the OpenFaas dashboard (you'll need the password and username generated from deploying OpenFaas in the first place). This dashboard gives you admin control to create, delete and invoke your functions.


