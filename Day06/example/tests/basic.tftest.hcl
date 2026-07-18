run "plan_test" {

  command = plan

  assert {
    condition     = aws_instance.demo.instance_type != ""
    error_message = "Instance type should not be empty."
  }

  assert {
    condition     = aws_instance.demo.tags["Name"] != ""
    error_message = "Name tag should exist."
  }
}
