resource "azurerm_resource_group" "aura_rg" {
  location = "westus3"
  name     = "aura_rg"
}

resource "azurerm_service_plan" "aura_plan" {
  depends_on = [azurerm_resource_group.aura_rg]

  name                = "aura-appservice-plan"
  location            = azurerm_resource_group.aura_rg.location
  resource_group_name = azurerm_resource_group.aura_rg.name
  sku_name           = "F1" # Free tier for development purposes
  os_type            = "Windows"
}

resource "azurerm_windows_web_app" "backend_java" {
  depends_on = [azurerm_service_plan.aura_plan]

  name                = "aura-backend-java"
  resource_group_name = azurerm_resource_group.aura_rg.name
  location            = azurerm_resource_group.aura_rg.location
  service_plan_id     = azurerm_service_plan.aura_plan.id

  site_config {
    cors {
      allowed_origins = ["*"]
    }
    application_stack {
      current_stack = "java"
      java_version  = "21"
      java_embedded_server_enabled = true
    }
    always_on = false
    app_command_line = "java -jar app.jar"

  }
  logs {
    detailed_error_messages = true
    failed_request_tracing  = true

    application_logs {
        file_system_level = "Verbose"
      }
  }

  app_settings = {
    "JWT"             = var.jwt_secret
    "TWILIO_SID"      = var.twilio_sid
    "TWILIO_AUTH"     = var.twilio_auth
    "EMAIL_USERNAME"  = var.email_username
    "EMAIL_PASSWORD"  = var.email_password
  }
}

resource "azurerm_app_service_source_control" "backend_java_source_control" {
  depends_on = [azurerm_windows_web_app.backend_java]

  app_id   = azurerm_windows_web_app.backend_java.id
  repo_url = "https://github.com/AURA-Group-8/aura-general-backend"
  branch   = "prod"
  use_manual_integration = true
}