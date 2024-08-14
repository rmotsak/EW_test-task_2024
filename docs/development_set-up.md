# Development Set-Up

## 1. Discuss & Justify Potential Deployment Options for the Development Environment

### Introduction
I believe that considering the development environment setup without taking into account the final production setup is impractical, as the development environment should closely resemble the production environment, but on a smaller scale to avoid unnecessary costs.

### Key Considerations
The choice of deployment model depends on several key factors:
- Financial constraints for infrastructure deployment.
- The expected number of users.
- The requirement to ensure no downtime during application deployments.

### Scenario with a Limited Budget
If our budget is limited and we do not have a clear understanding of how much more resources the production setup will require compared to the development setup, I would recommend starting with AWS cloud services such as AWS Elastic Beanstalk, Amazon RDS, AWS App Runner, and others. These solutions allow for a quick start with minimal costs and easy scalability in the future.

The downside of this approach is vendor lock-in, which could make migration to another cloud provider more challenging in the future.

### Scenario with a Larger Budget and High Availability Requirements
If we do not have strict financial constraints, and considering that ensuring no downtime during deployments is critical, I would choose Kubernetes (k8s). Kubernetes allows easy scaling of the application and provides high availability, reducing the risk of downtime during deployments.

To make the development environment as close to production as possible, we can use Kubernetes both locally and in the cloud. For local development, we can use k3d, which provides a local cluster environment. The DevSpace tool allows updating containers in real-time during development, giving developers more flexibility. DevSpace can also be integrated with AWS, allowing changes to be made directly in the cloud.

### Conclusion
Thus, depending on financial capabilities and availability requirements, we can choose cloud solutions for a quick start or Kubernetes for a more complex and scalable environment that will ensure proximity to production and flexibility for developers.

### CI/CD Tooling
Since our demo application is hosted on GitHub, I would utilize GitHub Actions for building, testing, and deploying in the case where we use AWS cloud services. GitHub Actions provides seamless integration with GitHub repositories and offers a wide range of actions that can be customized to fit our pipeline needs.

In the scenario where we use Kubernetes (k8s), I would separate the tasks into two stages:
- **Testing and Building Containers**: These tasks would be handled on the GitHub side using GitHub Actions. The resulting container images would then be pushed to Amazon ECR (Elastic Container Registry) for storage and further deployment.
- **Deployment**: For deployment, I would use ArgoCD, which is specifically designed for continuous delivery on Kubernetes. ArgoCD offers declarative GitOps-based deployment, ensuring that our Kubernetes cluster stays in sync with the desired state defined in our GitHub repository.
