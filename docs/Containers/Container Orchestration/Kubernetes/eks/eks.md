# AWS EKS

* 

## Guides/tips/misc...etc

2026/08/25
* [EKS/Best Practices Guide/Kubernetes Scaling Theory](https://docs.aws.amazon.com/eks/latest/best-practices/kubernetes_scaling_theory.html)
* [EKS/Best Practices Guide/Kubernetes Upstream SLOs](https://docs.aws.amazon.com/eks/latest/best-practices/kubernetes_upstream_slos.html)

* [Scaling Kubernetes deployments with Amazon CloudWatch metrics](https://aws.amazon.com/blogs/compute/scaling-kubernetes-deployments-with-amazon-cloudwatch-metrics/)
  * k8s-cloudwatch-adapter
    * [github.com/amazon-archives/k8s-cloudwatch-adapter](https://github.com/amazon-archives/k8s-cloudwatch-adapter)
    * Attention! This project has been archived and is no longer being worked on. If you are looking for a metrics server that can consume metrics from CloudWatch, please consider using the KEDA project instead.

* [Guidance for Event-Driven Application Autoscaling with KEDA on Amazon EKS](https://docs.aws.amazon.com/solutions/event-driven-application-autoscaling-with-keda-on-amazon-eks/)
  * Integrate KEDA with a Kubernetes cluster to achieve event-driven scalability
* [EKS/Best Practices Guide/Horizontal Pod Autoscaler (HPA)](https://docs.aws.amazon.com/eks/latest/best-practices/application.html#_horizontal_pod_autoscaler_hpa)
* [Split Cost Allocation Data (SCAD) Demystified: See Exactly Where Your EKS Cost Goes](https://builder.aws.com/content/3D2C7BlVnxkjX2xIUvjjfHGeOWM/split-cost-allocation-data-scad-demystified-see-exactly-where-your-eks-cost-goes)


MISC
* [github.com/kubernetes-sigs/aws-load-balancer-controller/issues/3126](https://github.com/kubernetes-sigs/aws-load-balancer-controller/issues/3126)
  * Pod restarts without clear reason (timeout when doing GET to configmap)
  * [comments](https://github.com/kubernetes-sigs/aws-load-balancer-controller/issues/3126#issuecomment-1947846915)
    * why does the LB controller need to contact the etcd server?
      * Every k8s controller that uses leader election relies on apiserver to elect leader and renew lease. APIServer uses etcd as backing store.
    * Is there a way to increase the timeout (or add a retry mechanism) to avoid the restarts?
      * ALB controller uses controller-runtime which support setting the lease duration and retry period.
      * It's expected to see a restart when leader loses lease.
* Amazon EKS Anywhere
    * [anywhere.eks.amazonaws.com/docs](https://anywhere.eks.amazonaws.com/docs/)
* killercoda
    * [killercoda.com](https://killercoda.com/)
* Karpenter
    * [docs.aws.amazon.com/eks/latest/best-practices/karpenter.html](https://docs.aws.amazon.com/eks/latest/best-practices/karpenter.html)
* [Route internet traffic with AWS Load Balancer Controller](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html)
* [cloud-provider-aws](https://github.com/kubernetes/cloud-provider-aws)
* [aws-load-balancer-controller](https://github.com/kubernetes-sigs/aws-load-balancer-controller)
    * [AWS Load Balancer Controller installation](https://kubernetes-sigs.github.io/aws-load-balancer-controller/latest/deploy/installation/#aws-load-balancer-controller-installation)
        * The AWS LBC provides a mutating webhook for service resources to set the spec.loadBalancerClass field for service of type LoadBalancer on create. This makes the AWS LBC the default controller for service of type LoadBalancer. You can disable this feature and revert to set Cloud Controller Manager (in-tree controller) as the default by setting the helm chart value enableServiceMutatorWebhook to false with --set enableServiceMutatorWebhook=false . You will no longer be able to provision new Classic Load Balancer (CLB) from your kubernetes service unless you disable this feature. Existing CLB will continue to work fine.
            * the default controller for service
            * Cloud Controller Manager (in-tree controller)
    * [artifacthub/aws-load-balancer-controller](https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller)
        * enableServiceMutatorWebhook