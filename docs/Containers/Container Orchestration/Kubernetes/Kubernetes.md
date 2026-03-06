# Kubernetes

## Guides/Tips/Misc...etc

* [kubectl-ai](https://github.com/GoogleCloudPlatform/kubectl-ai)
* KEDA
    * KEDA is a Kubernetes-based Event Driven Autoscaler.
    * [keda.sh](https://keda.sh/)
* [github.com/blackdesert575/k8s_lab/tree/main](https://github.com/blackdesert575/k8s_lab/tree/main)
* [kubernetes.io/docs/setup/production-environment/container-runtimes/](https://kubernetes.io/docs/setup/production-environment/container-runtimes/)
* [Spring Cloud for Microservices Compared to Kubernetes](https://developers.redhat.com/blog/2016/12/09/spring-cloud-for-microservices-compared-to-kubernetes)
* [k0s](https://k0sproject.io/)
    * k0s is the simple, solid & certified Kubernetes distribution that works on any infrastructure: bare-metal, on-premises, edge, IoT, public & private clouds. It's 100% open source & free.
* [github.com/kubernetes-sigs/kubespray](https://github.com/kubernetes-sigs/kubespray)
* [github.com/kelseyhightower/kubernetes-the-hard-way](https://github.com/kelseyhightower/kubernetes-the-hard-way)
* [K8sGPT](https://k8sgpt.ai/)
* [MutatingWebhookConfiguration](https://kubernetes.io/docs/reference/kubernetes-api/extend-resources/mutating-webhook-configuration-v1/)
* [cloud-controller](https://kubernetes.io/docs/concepts/architecture/cloud-controller/)
* [vscode/extentions/Kubernetes Templates](https://marketplace.visualstudio.com/items?itemName=lunuan.kubernetes-templates)
* [k8s/docs/cluster-administration/logging](https://kubernetes.io/docs/concepts/cluster-administration/logging/)
* [Exporting Kubernetes Logs to Elasticsearch Using Fluent Bit](https://medium.com/kubernetes-tutorials/exporting-kubernetes-logs-to-elasticsearch-using-fluent-bit-758e8de606af)
* [grafana-dashboards-kubernetes](https://github.com/dotdc/grafana-dashboards-kubernetes?tab=readme-ov-file)
* [Announcing AWS Observability Accelerator to configure comprehensive observability for Amazon EKS](https://aws.amazon.com/blogs/mt/announcing-aws-observability-accelerator-to-configure-comprehensive-observability-for-amazon-eks/)
* [grafana/EKS Pods by Node Kubernetes / Compute Resources / Node (Pods)](https://grafana.com/grafana/dashboards/17289-kubernetes-compute-resources-node-pods/)
* [gatus](https://github.com/TwiN/gatus/blob/master/.examples/kubernetes/gatus.yaml)
* [Cloud Native Live: Securing Your Cluster with Cilium Network Policies](https://youtu.be/huBnEI_wW2U)
* [Introduction to Cilium & Hubble](https://docs.cilium.io/en/latest/overview/intro/)
* [Translate a Docker Compose File to Kubernetes Resources](https://kubernetes.io/docs/tasks/configure-pod-container/translate-compose-kubernetes/)
* [K3s](https://docs.k3s.io/installation)
* [Rancher](https://ranchermanager.docs.rancher.com/getting-started/overview)
* [What is DC/OS?](https://dcos.io/)
* [DC/OS vs Kubernetes: What are the differences?](https://stackshare.io/stackups/dcos-vs-kubernetes)
* [Spring Cloud 和 Kubernetes](https://youtu.be/_xMgDF8_mKY)
* [Kubernetes integration with Spring Cloud Discovery Client, Configuration, etc... ](https://github.com/spring-cloud/spring-cloud-kubernetes)
* [當 Spring Cloud 遇上 Kubernetes](https://medium.com/brobridge/%E7%95%B6-spring-cloud-%E9%81%87%E4%B8%8A-kubernetes-5bc9e6ce602f)
* [Amazon EKS Anywhere](https://anywhere.eks.amazonaws.com/docs/)
* [Harvester](https://harvesterhci.io/)
    * [github/harvester](https://github.com/harvester/harvester)
* [How do you connect Kubernetes clusters located in different data centres?](https://learnk8s.io/bite-sized/connecting-multiple-kubernetes-clusters)
* [kubespray](https://github.com/kubernetes-sigs/kubespray)
    * Deploy a Production Ready Kubernetes Cluster
* [need-some-explaination-of-kubectl-stdin-and-pipe](https://stackoverflow.com/questions/54032336/need-some-explaination-of-kubectl-stdin-and-pipe)
* [volumes](https://kubernetes.io/docs/concepts/storage/volumes/)
* [workloads](https://kubectl.docs.kubernetes.io/guides/introduction/resources_controllers/#workloads)
* [Tutorials](https://kubernetes.io/docs/tutorials/#basics)
* [interacting-with-deployments-and-services](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#interacting-with-deployments-and-services)
* [Why dig does not resolve K8s service by dns name while nslookup has no problems with it?](https://stackoverflow.com/questions/50668124/why-dig-does-not-resolve-k8s-service-by-dns-name-while-nslookup-has-no-problems)
* Troubleshooting
    * [Safely Drain a Node](https://kubernetes.io/docs/tasks/administer-cluster/safely-drain-node/)
    * [Migrating the workloads](https://cloud.google.com/kubernetes-engine/docs/tutorials/migrating-node-pool#step_4_migrate_the_workloads)
* [Kubernetes 101, part I, the fundamentals](https://dev.to/leandronsp/kubernetes-101-part-i-the-fundamentals-23a1)
* [Here's what to know about changes to kubectl authentication coming in GKE v1.26](https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke)

```shell
#當使用GKE的k8s時，如果需要擴增node pool，但原先舊有node pool已有的deployment已掛載了PersistentVolumeClaim，執行kubectl drain遇到錯誤，該如何處理?
#將 PersistentVolumeClaim 轉移到新的 StorageClass。
#您需要先建立一個新的 StorageClass，然後將 PersistentVolumeClaim 轉移到這個 StorageClass 上。可以使用下列指令來轉移：
kubectl patch pvc <pvc-name> -p '{"spec":{"storageClassName":"<new-storage-class-name>"}}'

```

## admin tools

* kubectl
* kubie

## kind

* [kubernetes-sigs/kind](https://github.com/kubernetes-sigs/kind)
* [kind](https://kind.sigs.k8s.io/)
    * kind is a tool for running local Kubernetes clusters using Docker container “nodes”. kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.
    * [docs/design/initial](https://kind.sigs.k8s.io/docs/design/initial/)
* [剖析 KIND(Kubernetes IN Docker) 的實作原理 - HungWei Chiu](https://hackmd.io/TvUa7q52R4a8HG9lPu-rVw)
