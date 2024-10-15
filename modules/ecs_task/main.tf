module "ecr" {
  source = "../ecr"
}

module "iam" {
  source = "../iam"
}

resource "aws_ecs_task_definition" "ai_task" {
  family                   = "ai-task"
  container_definitions    = <<DEFINITION
  [
    {
      "name": "ai-task",
      "image": "${module.ecr.repository_url}",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 3000,
          "hostPort": 3000
        }
      ],
      "memory": 512,
      "cpu": 256
    }
  ]
  DEFINITION
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = 512
  cpu                      = 256
  execution_role_arn       = "${module.iam.arn}"
}
