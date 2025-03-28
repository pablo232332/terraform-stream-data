resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.s3_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid = "AllowKinesisWriteAccessToBucket"
        Effect = "Allow"
        # Grants access to the kinesis service
        Principal = {
          Service = ["kinesis.amazonaws.com"]
        }
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket"
        ]
        # The S3 bucket and objects to which access is granted
        Resource = [
          aws_s3_bucket.s3_bucket.arn,
          "${aws_s3_bucket.s3_bucket.arn}/*"
        ]
      }
    ]
  })
}