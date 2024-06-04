
resource "aws_s3_bucket" "cerberus" {

  bucket = local.s3-sufix

}

resource "aws_s3_bucket_versioning" "versioning_cerberus" {
  bucket = aws_s3_bucket.cerberus.id
  versioning_configuration {
    status = "Enabled"
  }
}