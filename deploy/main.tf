module "service-account" {
  source = "../module/service account"
  name       = "test-service-account-01"
  project_id = var.mproject_id
  display_name = "Test Service Account"
  description = "This service account is used for test purpose"
  iam={
    "roles/iam.serviceAccountUser"=["user:vign15155.ec@rmkcet.ac.in"]
  }
  iam_project_roles = {
    "triple-baton-337806"= [
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter"]
  }
}