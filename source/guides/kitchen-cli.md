---
title: 'The Kitchen CLI'
---

```text
$ kitchen --help
Tasks:
  kitchen console                          # Kitchen Console!
  kitchen converge [(all|<REGEX>)] [opts]  # Converge one or more instances
  kitchen create [(all|<REGEX>)] [opts]    # Create one or more instances
  kitchen destroy [(all|<REGEX>)] [opts]   # Destroy one or more instances
  kitchen help [TASK]                      # Describe available tasks or one specific task
  kitchen init                             # Adds some configuration to your cookbook so Kitchen can rock
  kitchen list [(all|<REGEX>)]             # List all instances
  kitchen login (['REGEX']|[INSTANCE])     # Log in to one instance
  kitchen new_plugin [NAME]                # Generate a new Kitchen Driver plugin gem project
  kitchen setup [(all|<REGEX>)] [opts]     # Setup one or more instances
  kitchen test [all|<REGEX>)] [opts]       # Test one or more instances
  kitchen verify [(all|<REGEX>)] [opts]    # Verify one or more instances
  kitchen version                          # Print Kitchen's version information
```

To get additional information about a particular task, use the `kitchen help [TASK]` command:

```text
$ kitchen help setup
Usage:
  kitchen setup [(all|<REGEX>)] [opts]

Options:
  -p, [--parallel]  # Perform action against all matching instances in parallel

Setup one or more instances
```
