locals {
    storage_account_name = "${replace("${lower(("${var.web_app_name}${var.environment}funcsta"))}", "/[^a-z0-9]/","")}"
    app_service_plan_name = "${var.web_app_name}-${var.environment}-plan"
    web_app_name = "${var.web_app_name}-${var.environment}-func"
    autoscale_settings_name = "${var.web_app_name}-${var.environment}-autoscale"
}
