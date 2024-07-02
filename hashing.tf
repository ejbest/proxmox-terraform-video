provider "random" {
  version = "~> 3.0"
}

provider "local" {
  version = "~> 2.0"
}

data "external" "hashed_password" {
  program = ["python3", "${path.module}/hash_password.py", random_password.example.result]

  depends_on = [random_password.example]
}

resource "random_password" "example" {
  length  = 16
  special = true
}

output "plain_password" {
  value = random_password.example.result
  sensitive = true
}

output "hashed_password" {
  value = data.external.hashed_password.result["hashed_password"]
  sensitive = true
}
