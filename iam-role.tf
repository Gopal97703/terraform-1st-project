resource "aws_iam_instance_profile" "s3_access" {
  name = "s3_read_access"
  role = "3-TIER-WEBAPP"
}

# this attach role to the EC2