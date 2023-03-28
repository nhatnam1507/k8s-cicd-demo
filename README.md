# k8s-cicd-demo
![alt text](https://github.com/nhatnam1507/k8s-cicd-demo/blob/main/diagram.png)


# Full CI/CD pipeline:
 - Dev commit service’s source code
 - Trigger CI pipeline for dev to build and automation test
 - Review source code, merge source to Production branch will trigger CI Production pipeline (brach master)
 - After CI master build succeeds, trigger CD to deploy into dev namespace
 - Integration test for dev namespace
 - Wait approval from reviewer to deploy on prod namespace
