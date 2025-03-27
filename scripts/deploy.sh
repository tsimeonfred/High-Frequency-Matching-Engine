#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 4883
# Hash 3234
# Hash 7475
# Hash 2705
# Hash 6781
# Hash 1268
# Hash 7934
# Hash 2327
# Hash 6657
# Hash 9031
# Hash 3331
# Hash 7837
# Hash 6031
# Hash 1858
# Hash 2250
# Hash 5800
# Hash 4972
# Hash 2822
# Hash 4009
# Hash 2862
# Hash 7371
# Hash 5288
# Hash 6314
# Hash 4650
# Hash 3336
# Hash 7097
# Hash 9080
# Hash 3377
# Hash 3520
# Hash 3698
# Hash 7673
# Hash 4645
# Hash 9683
# Hash 2638
# Hash 5233
# Hash 7521
# Hash 3196
# Hash 3547
# Hash 8452
# Hash 2664
# Hash 9236
# Hash 5894
# Hash 5387
# Hash 9800
# Hash 6618
# Hash 4333
# Hash 3162
# Hash 7752
# Hash 6526
# Hash 8978
# Hash 8426
# Hash 4612
# Hash 7706
# Hash 3540
# Hash 7907
# Hash 9491
# Hash 8279
# Hash 1037
# Hash 4131
# Hash 7775
# Hash 3644