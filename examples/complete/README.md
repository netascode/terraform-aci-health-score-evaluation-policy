<!-- BEGIN_TF_DOCS -->
# ACI Health Score Policy Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "aci_health_score_policy" {
  source = "netascode/aci_health_score_policy"
  version = ">= 0.0.1"

  ignoreAckedFaults = true
}
```
<!-- END_TF_DOCS -->