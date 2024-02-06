locals {
  sufix = "${var.tags.project}_${var.tags.env}_${var.tags.region}" #recurso-project-env-region
}

resource "random_string" "sufijo_s3" {
  length = 8
  special = false
  upper = false
}

locals {
  s3_sufix = "${var.tags.project}-${random_string.sufijo_s3.id}"
}