
###########################################################
# DATA
###########################################################

data "aws_iam_policy_document" "allow_public_access" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"

    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.website.arn}/*"]
  }
}
