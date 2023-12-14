resource "local_file" "hello-world"{

    filename = var.filename
    content = random_string.string.id
    file_permission = "0700"
    lifecycle {
    }
}

resource "random_string" "string" {
   length = 10
   special = false
}