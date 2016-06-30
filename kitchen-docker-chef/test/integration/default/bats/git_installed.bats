#!/usr/bin/env bats

@test "git binary is found in PATH" {
  run which gittt
  [ "$status" -eq 0 ]
}
@test "pwd binary is found in PATH" {
  run which pwd
  [ "$status" -eq 0 ]
}
