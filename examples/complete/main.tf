resource "aci_rest_managed" "healthEvalP" {
  dn         = "uni/fabric/hsPols/hseval"
  class_name = "healthEvalP"
  content = {
    name  = "default"
    descr = "Default Health Score Evaluation Policy from IFC"
    ignoreAckedFaults = var.ignore_acked_faults
  }
}
