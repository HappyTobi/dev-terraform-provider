provider "azuread" {
  client_id = "<>"
  client_secret = "<>"
  tenant_id = "<>"
}

resource "azuread_application" "app_tf_example" {
  display_name = "terraform-test-user"
  owners = [ "" ]

  app_password {
    display_name = "MySecret-1"
    rotate_when_changed = {
     rotation = time_rotating.example.id
    }
  }
}

resource "time_rotating" "example" {
  rotation_days = 1
}

output "secret" {
  sensitive = true
  value = azuread_application.app_tf_example.app_password[0].value
}