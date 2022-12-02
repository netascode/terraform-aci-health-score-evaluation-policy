<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-health-score-policy/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-health-score-policy/actions/workflows/test.yml)

# Terraform ACI Health Score Policy

Enables/disables the Ignore Acknowledged Faults attribute in the default health score evaluation policy.

Location in GUI:
`Fabric` » `Fabric Policies` » `Policies` » `Monitoring` » `Common Policy` » `Health Score Evaluation Policies` » `Health Score Evaluation Policy`

## Examples

```hcl
module "aci_health_score_policy" {
  source = "netascode/aci_health_score_policy"
  version = ">= 0.0.1"

  ignore_acked_faults = true
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ignore_acked_faults"></a> [ignore_acked_faults](#input\_name) | Ignore Acknowledged Faults | `bool` | false | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `healthEvalP` object. |
| <a name="output_name"></a> [name](#output\_name) | Health score policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.healthEvalP](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->