resource "aws_efs_file_system" "foo" {
  encrypted = true
  kms_key_id = var.kms_arn !="" ? var.kms_arn : ""
  tags = {
    Name = "MyProduct"
  }
}
