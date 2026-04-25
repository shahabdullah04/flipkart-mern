aws_region              = "us-east-1"
availability_zone       = "us-east-1a"
instance_type           = "t3.medium"   # Updated for K8s compatibility
key_pair_name           = "cloud-project-key" # Just the exact name
allow_kubernetes_ports  = true          # Set to true so you can access your apps later

tags = {
  Owner = "abdullah"
}