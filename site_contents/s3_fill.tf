resource "aws_s3_object" "site_file" {
    key = "index.html"
    bucket = var.s3_bucket_id
    source = "${path.module}/index.html"
    etag = filemd5("${path.module}/index.html")
    content_type = "text/html"
}
