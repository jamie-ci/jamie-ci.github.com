---
title: 'Getting Started'
---

Project Setup
-------------
Test Kitchen 1.0 is distributed as a gem:

    $ gem install test-kitchen

If you're using bundler, we recommend adding `test-kitchen` as a dependency with a locked version:

```ruby
gem 'test-kitchen', '~> x.x.x' # Latest stable version
```

and run the `bundle` command to install:

    $ bundle install

This will expose the `kitchen` CLI. Run `kitchen init` to get started:

    $ kitchen init

You will be prompted with a series of questions. In this guide, we will be using the [vagrant kitchen driver](https://github.com/opscode/kitchen-vagrant).

```text
$ kitchen init
      create  .kitchen.yml
      append  Rakefile
      create  test/integration/standard
      append  .gitignore
      append  .gitignore
Add a Driver plugin to your Gemfile? (y/n)> y
Enter gem name, `list', or `skip'> kitchen-vagrant
      append  Gemfile
You must run `bundle install' to fetch any new gems.
```

Run the `bundle` command again to install the new vagrant driver:

    $ bundle install

Open up the `.kitchen.yml` file created in the root of your repository. See [The .kitchen.yml](/guides/the_kitchen_yaml/) section for more information and configuration options. You can leave the defaults for now.

Now, it is time to get testing. Use the `--parallel` option to run
your tests in parallel. Trust us, it's faster!

    $ bundle exec kitchen test
