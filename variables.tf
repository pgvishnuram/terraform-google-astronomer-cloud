variable "base_domain" {
  default     = ""
  type        = string
  description = "if blank, will use from gcp module"
}

variable "worker_node_size" {
  default = "n1-standard-4"
  type    = string
}

variable "max_worker_node_count" {
  default     = 10
  description = "The approximate maximum number of nodes in the GKE worker node pool. The exact max will be 3 * ceil(your_value / 3.0) ."
}

variable "db_instance_size" {
  default = "db-f1-micro"
  type    = string
}

variable "stripe_secret_key" {
  default = ""
  type    = string
}

variable "stripe_pk" {
  default = ""
  type    = string
}

variable "pagerduty_service_key" {
  default = ""
  type    = string
}

variable "slack_alert_channel_platform" {
  default = ""
  type    = string
}

variable "slack_alert_url_platform" {
  default = ""
  type    = string
}

variable "slack_alert_channel" {
  default = ""
  type    = string
}

variable "slack_alert_url" {
  default = ""
  type    = string
}

variable "dns_managed_zone" {
  default = ""
  type    = string
}

variable "email" {
  type = string
}

variable "deployment_id" {
  type = string
}

variable "public_signups" {
  default = true
  type    = bool
}

variable "enable_istio" {
  default = true
  type    = bool
}

variable "enable_kubecost" {
  default = false
  type    = bool
}

variable "kubecost_token" {
  default = ""
  type    = string
}

variable "zonal_cluster" {
  default = false
  type    = bool
}

variable "management_api" {
  default = "private"
  type    = string
}

variable "enable_gvisor" {
  default = false
  type    = bool
}

variable "smtp_uri" {
  default = ""
  type    = string
}

variable "kubeconfig_path" {
  default = ""
  type    = string
}

variable "do_not_create_a_record" {
  default = false
  type    = bool
}

variable "tls_cert" {
  default     = ""
  type        = string
  description = "The signed certificate for the Astronomer Load Balancer. It should be signed by a certificate authorize and should have common name *.base_domain. Ignored if var.lets_encrypt is true."
}

variable "tls_key" {
  default     = ""
  type        = string
  description = "The private key corresponding to the signed certificate tls_cert. Ignored if var.lets_encrypt is true"
}

variable "lets_encrypt" {
  default = true
  type    = bool
}

variable "enable_velero" {
  default = true
  type    = bool
}

# https://cloud.google.com/kubernetes-engine/docs/release-notes-regular
variable "kube_version_gke" {
  default     = "1.14.6-gke.2"
  description = "The kubernetes version to use in GKE"
}

variable "tiller_version" {
  default     = "2.16.1"
  description = "The version of tiller to install"
}

variable "enable_knative" {
  type        = bool
  default     = false
  description = "enable_istio=true is required for knative to work"
}

variable "create_dynamic_pods_nodepool" {
  type        = bool
  default     = true
  description = "If true, creates a NodePool for the pods spun up using KubernetesPodsOperator or KubernetesExecutor"
}

variable "enable_gke_metered_billing" {
  type        = bool
  default     = true
  description = "If true, enables GKE metered billing to track costs on namespaces & label level"
}

variable "astronomer_helm_values" {
  type        = string
  default     = ""
  description = "The Helm values to apply to the Astronomer platform. This yaml block will the Helm user-provided values for the Astronomer installation, if provided."
}

variable "astronomer_version_git_checkout" {
  description = "Verison of the helm chart to use, when using git clone method. This should exactly match what you would want to use with 'git checkout <this variable>'. This is ignored if astronomer_chart_git_repository is not configured."
  default     = "v0.11.0-astro.8"
  type        = string
}

variable "astronomer_chart_git_repository" {
  description = "Git repository clone url, when using git clone method. This should exactly match what you would want to use with 'git clone <this variable>'. It is better to not use this and instead use just the astronomer_version variable, which will pull from the Astronomer Helm chart repository."
  default     = "https://github.com/astronomer/helm.astronomer.io.git"
  type        = string
}

variable "astronomer_version" {
  description = "Verison of Helm chart to use, do not include a 'v' at the front"
  default     = "0.12.0-alpha.1"
  type        = string
}

variable "astronomer_helm_chart_name" {
  description = "The name of the Astronomer Helm chart to install from the Astronomer Helm chart repository."
  default     = "astronomer"
  type        = string
}

variable "wait_for_helm_chart" {
  description = "Should we wait for Astronomer to come up before indicating the apply is complete?"
  default     = true
  type        = bool
}

variable "astronomer_helm_chart_repo" {
  description = "The name of the Astronomer Helm chart repo"
  default     = "astronomer"
  type        = string
}

variable "astronomer_helm_chart_repo_url" {
  description = "The url of the Astronomer Helm chart repo"
  default     = "https://helm.astronomer.io"
  type        = string
}
