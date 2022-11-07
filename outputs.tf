output "dn" {
  value       = aci_rest_managed.healthEvalP.id
  description = "Distinguished name of `healthEvalP` object."
}

output "name" {
  value       = aci_rest_managed.healthEvalP.content.name
  description = "Health score policy name."
}
