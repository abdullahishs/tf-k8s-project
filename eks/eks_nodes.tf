 resource "aws_eks_node_group" "worker-node-group" {
  cluster_name  = aws_eks_cluster.k8s-project-eks.name
  node_group_name = "k8s-project-workernodes"
  node_role_arn  = aws_iam_role.workernodes.arn
  subnet_ids   = [var.subnet_id_1, var.subnet_id_2]
  instance_types = ["t3.micro"]
 
  scaling_config {
   desired_size = 3
   max_size   = 5
   min_size   = 2
  }
 
  depends_on = [
   aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
   aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
   aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
 }