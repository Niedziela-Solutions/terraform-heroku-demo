provider "heroku" {}

resource "heroku_app" "main" {
  name   = var.app_name
  region = "us"
  stack = var.heroku_stack

  sensitive_config_vars = {
    SECRET_KEY_BASE = var.secret_key_base
  }

  buildpacks = [
    "heroku/ruby"
  ]
}
