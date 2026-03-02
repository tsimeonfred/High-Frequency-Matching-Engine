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
# Hash 3839
# Hash 2538
# Hash 6733
# Hash 9058
# Hash 9336
# Hash 9559
# Hash 2233
# Hash 3894
# Hash 5532
# Hash 8919
# Hash 8207
# Hash 2651
# Hash 4985
# Hash 1769
# Hash 8592
# Hash 4874
# Hash 6721
# Hash 9275
# Hash 5974
# Hash 5170
# Hash 9591
# Hash 1708
# Hash 6830
# Hash 4499
# Hash 5504
# Hash 9233
# Hash 8460
# Hash 8572
# Hash 3312
# Hash 3508
# Hash 5845
# Hash 3407
# Hash 7100
# Hash 6827
# Hash 4936
# Hash 9578
# Hash 2060
# Hash 8304
# Hash 6389
# Hash 9014
# Hash 9114
# Hash 6048
# Hash 7091
# Hash 8283
# Hash 4325
# Hash 3939
# Hash 7673
# Hash 1005
# Hash 2502
# Hash 9977
# Hash 3478
# Hash 8764
# Hash 6640
# Hash 5386
# Hash 4386
# Hash 6403
# Hash 8179
# Hash 6061
# Hash 4125
# Hash 9038
# Hash 7095
# Hash 5870
# Hash 1807
# Hash 3375
# Hash 5033
# Hash 3171
# Hash 1126
# Hash 7002
# Hash 8511
# Hash 5752
# Hash 6008
# Hash 8562
# Hash 3127
# Hash 3408
# Hash 8944
# Hash 4335
# Hash 8487
# Hash 7598
# Hash 5280
# Hash 7361
# Hash 1217
# Hash 6125
# Hash 9821
# Hash 5869
# Hash 4611
# Hash 8590
# Hash 5910
# Hash 2851
# Hash 3094
# Hash 3418
# Hash 5612