resource "aws_sqs_queue" "processing_queue" {
  name = "${var.project_name}-queue"
}
