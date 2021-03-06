
// starts resources to provision them.
build {
    sources = [ 
        "source.virtualbox-iso.ubuntu-1204",
    ]

    provisioner "shell" {
        name     = "provisioner that does something"
        not_squashed = var.foo
        string   = "string"
        int      = "${41 + 1}"
        int64    = "${42 + 1}"
        bool     = "true"
        trilean  = true
        duration = "${9 + 1}s"
        map_string_string {
            a = "b"
            c = "d"
        }
        slice_string = [for s in var.availability_zone_names : lower(s)]
        slice_slice_string = [
            ["a","b"],
            ["c","d"]
        ]

        nested {
            string   = "string"
            int      = 42
            int64    = 43
            bool     = true
            trilean  = true
            duration = "10s"
            map_string_string {
                a = "b"
                c = "d"
            }
            slice_string = [for s in var.availability_zone_names : lower(s)]
            slice_slice_string = [
                ["a","b"],
                ["c","d"]
            ]
        }

        nested_slice {
            tag {
                key = "first_tag_key"
                value = "first_tag_value"
            }
            dynamic "tag" {
                for_each = local.standard_tags
                content {
                    key                 = tag.key
                    value               = tag.value
                }
            }
        }
    }

    provisioner "file" {
        not_squashed = "${var.foo}"
        string   = "string"
        int      = 42
        int64    = 43
        bool     = true
        trilean  = true
        duration = "10s"
        map_string_string {
            a = "b"
            c = "d"
        }
        slice_string = local.abc_map[*].id
        slice_slice_string = [
            ["a","b"],
            ["c","d"]
        ]

        nested {
            string   = "string"
            int      = 42
            int64    = 43
            bool     = true
            trilean  = true
            duration = "10s"
            map_string_string {
                a = "b"
                c = "d"
            }
            slice_string = [
                "a",
                "b",
                "c",
            ]
            slice_slice_string = [
                ["a","b"],
                ["c","d"]
            ]
        }

        nested_slice {
            tag {
                key = "first_tag_key"
                value = "first_tag_value"
            }
            dynamic "tag" {
                for_each = local.standard_tags
                content {
                    key                 = tag.key
                    value               = tag.value
                }
            }
        }
    }

    post-processor "amazon-import" { 
        name     = "something"
        string   = "string"
        int      = 42
        int64    = 43
        bool     = true
        trilean  = true
        duration = "10s"
        map_string_string {
            a = "b"
            c = "d"
        }
        slice_string = [
            "a",
            "b",
            "c",
        ]
        slice_slice_string = [
            ["a","b"],
            ["c","d"]
        ]

        nested {
            string   = "string"
            int      = 42
            int64    = 43
            bool     = true
            trilean  = true
            duration = "10s"
            map_string_string {
                a = "b"
                c = "d"
            }
            slice_string = [
                "a",
                "b",
                "c",
            ]
            slice_slice_string = [
                ["a","b"],
                ["c","d"]
            ]
        }

        nested_slice {
        }
    }

    post-processor "amazon-import" { 
        string   = "string"
        int      = 42
        int64    = 43
        bool     = true
        trilean  = true
        duration = "10s"
        map_string_string {
            a = "b"
            c = "d"
        }
        slice_string = [
            "a",
            "b",
            "c",
        ]
        slice_slice_string = [
            ["a","b"],
            ["c","d"]
        ]

        nested {
            string   = "string"
            int      = 42
            int64    = 43
            bool     = true
            trilean  = true
            duration = "10s"
            map_string_string {
                a = "b"
                c = "d"
            }
            slice_string = [
                "a",
                "b",
                "c",
            ]
            slice_slice_string = [
                ["a","b"],
                ["c","d"]
            ]
        }

        nested_slice {
        }
    }
}
