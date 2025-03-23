# terraform-aws-acm
Create and verify ACM certificate

## Usage

```hcl
module "acm" {
  source           = "TheGrowthExponent/acm/aws"
  version          = "1.0.3"
  hosted_zone_id   = var.hosted_zone_id
  host_name        = var.host_name
}
```
