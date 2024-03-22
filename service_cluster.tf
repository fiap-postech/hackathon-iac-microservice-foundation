resource "aws_ecs_cluster" "service_cluster" {
  name = local.service_cluster.name
}

resource "aws_ecs_cluster_capacity_providers" "service_cluster_provider" {
  cluster_name = aws_ecs_cluster.service_cluster.name

  capacity_providers = [local.service_cluster.provider.name]

  default_capacity_provider_strategy {
    base              = local.service_cluster.provider.base
    weight            = local.service_cluster.provider.weight
    capacity_provider = local.service_cluster.provider.name
  }
}