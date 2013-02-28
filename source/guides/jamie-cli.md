---
title: 'The Jamie CLI'
---

```text
$ jamie --help
Tasks:
  jamie console                          # Jamie Console!
  jamie converge [(all|<REGEX>)] [opts]  # Converge one or more instances
  jamie create [(all|<REGEX>)] [opts]    # Create one or more instances
  jamie destroy [(all|<REGEX>)] [opts]   # Destroy one or more instances
  jamie help [TASK]                      # Describe available tasks or one specific task
  jamie init                             # Adds some configuration to your cookbook so Jamie can rock
  jamie list [(all|<REGEX>)]             # List all instances
  jamie login (['REGEX']|[INSTANCE])     # Log in to one instance
  jamie new_plugin [NAME]                # Generate a new Jamie Driver plugin gem project
  jamie setup [(all|<REGEX>)] [opts]     # Setup one or more instances
  jamie test [all|<REGEX>)] [opts]       # Test one or more instances
  jamie verify [(all|<REGEX>)] [opts]    # Verify one or more instances
  jamie version                          # Print Jamie's version information
```

To get additional information about a particular task, use the `jamie help [TASK]` command:

```text
$ jamie help setup
Usage:
  jamie setup [(all|<REGEX>)] [opts]

Options:
  -p, [--parallel]  # Perform action against all matching instances in parallel

Setup one or more instances
```
