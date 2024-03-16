# Redis Cluster

![redis-cluster-k8s-architecture](image.png)

**1. Clone Repository:** Clone this repository to your local machine using the
following command:

```bash
git clone https://github.com/kiran-machineni/kubernetes-examples
```

**2. Apply Kubernetes Configurations:**

- Navigate to the folder containing Kubernetes configuration files.

```bash
cd kubernetes-examples
```

- Use kubectl apply command to apply the manifests to your Kubernetes cluster:

```bash
kubectl apply -f redis-cluster/*.yaml
```

**3. Create Redis cluster:**

Execute below command in terminal to create redis cluster

```bash
kubectl exec -it redis-cluster-0 -- redis-cli --cluster create --cluster-replicas 1 $(kubectl get pods -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 {end}')
```
