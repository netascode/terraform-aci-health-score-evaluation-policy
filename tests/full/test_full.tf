terraform {
  required_version = ">= 1.0.0"

  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "CiscoDevNet/aci"
      version = ">=2.0.0"
    }
  }
}

module "main" {
  source = "../.."

  ignore_acked_faults = true
}

data "aci_rest_managed" "healthEvalP" {
  dn = "uni/fabric/hsPols/hseval"

  depends_on = [module.main]
}

resource "test_assertions" "healthEvalP" {
  component = "healthEvalP"

  equal "name" {
    description = "Health score policy name."
    got         = data.aci_rest_managed.healthEvalP.content.name
    want        = "default"
  }

  equal "descr" {
    description = "Health score policy description."
    got         = data.aci_rest_managed.healthEvalP.content.descr
    want        = "Default Health Score Evaluation Policy from IFC"
  }

  equal "ignore_acked_faults" {
    description = "Ignore Acknowledged Faults"
    got         = data.aci_rest_managed.healthEvalP.content.ignore_acked_faults
    want        = "yes"
  }
}
