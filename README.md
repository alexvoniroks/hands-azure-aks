# Azure + Terraform + AKS Hands-on Lab

This project demonstrates how to provision an **Azure Kubernetes Service (AKS)** cluster using **Terraform**, and then deploy a sample Nginx application using **kubectl**.

It is designed as a hands-on lab for learning the fundamentals of **Infrastructure as Code (IaC)** and container orchestration with **Azure Kubernetes Service**.

---

## 🚀 Architecture

![Architecture](Architecture.png)

- **Terraform** – Manages infrastructure as code.
- **Azure** – Cloud platform hosting the AKS cluster.
- **AKS (Azure Kubernetes Service)** – Kubernetes cluster running in Azure.
- **Application (Nginx)** – Deployed to AKS as a test workload.

---

## ✅ Prerequisites

- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)  
- [Terraform](https://developer.hashicorp.com/terraform/downloads)  
- [kubectl](https://kubernetes.io/docs/tasks/tools/)  

Login to Azure:
```bash
az login
az account set --subscription "<YOUR_SUBSCRIPTION_ID>"


⚡ Usage
1. Deploy Infrastructure
cd terraform
terraform init
terraform plan
terraform apply -auto-approve

2. Configure kubectl
az aks get-credentials --resource-group rg-aks-lab --name aks-lab-cluster
kubectl get nodes

3. Deploy Sample Application
kubectl apply -f ../k8s/nginx.yaml
kubectl get svc nginx-service


Open the EXTERNAL-IP in your browser to see the Nginx welcome page 🎉.

🧹 Cleanup

When done, destroy all resources:

cd terraform
terraform destroy -auto-approve

📖 Learning Objectives

By completing this lab, you will:

Learn how to use Terraform to provision AKS clusters on Azure.

Understand how kubectl interacts with Kubernetes clusters.

Deploy a basic containerized application to AKS.

Manage resources lifecycle (provision & destroy).

🔗 References

Azure AKS Documentation

Terraform Azure Provider

Kubernetes Documentation
