resource "google_kms_ekm_connection_iam_policy" "kms_ekm_connection_iam_policies" {
  for_each = var.kms_ekm_connection_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

