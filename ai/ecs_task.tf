# resource "aws_ecs_task_definition" "ai_task" {
#   family                   = "ai-task"
#   container_definitions    = <<DEFINITION
#   [
#     {
#       "name": "ai-task",
#       "image": "${aws_ecr_repository.ai_ecr_repo.repository_url}",
#       "essential": true,
#       "portMappings": [
#         {
#           "containerPort": 5000,
#           "hostPort": 5000
#         }
#       ],
#       "memory": 512,
#       "cpu": 256
#     }
#   ]
#   DEFINITION
#   requires_compatibilities = ["FARGATE"]
#   network_mode             = "awsvpc"
#   memory                   = 512
#   cpu                      = 256
#   execution_role_arn       = "${aws_iam_role.ecsTaskExecutionRole.arn}"
# }