module "terraform-s3-website" {
  source = "github.com/justincampbell/terraform-s3-website"
  bucket = "til.justincampbell.me"
  domain = "justincampbell.me"
  host   = "til"
}
