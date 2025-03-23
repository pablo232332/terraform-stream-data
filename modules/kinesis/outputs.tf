# Output the kinesis data stream arn
output "kinesis_data_stream_arn" {
  value = aws_kinesis_stream.my_stream.arn
}