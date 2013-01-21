---
title: 'Getting Started'
---

Project Setup
-------------
Jamie is distributed as a gem. In your `Gemfile`, add `jamie` as a dependency:

```ruby
gem 'jamie', '~> x.x.x'   # http://rubygems.org/gems/jamie
```

and run the `bundle` command to install:

    $ bundle install

This will expose the `jamie` CLI. Run `jamie init` to get started:

    $ jamie init

You will be prompted with a series of questions. In this guide, we will be using the [vagrant jamie driver](https://github.com/jamie-ci/jamie-vagrant).

```text
$ jamie init
      create  .jamie.yml
      append  Rakefile
      create  test/integration/standard
      append  .gitignore
      append  .gitignore
Add a Driver plugin to your Gemfile? (y/n)> y
Enter gem name, `list', or `skip'> jamie-vagrant
      append  Gemfile
You must run `bundle install' to fetch any new gems.
```

Run the `bundle` command again to install the new vagrant driver:

    $ bundle install

Open up the `.jamie.yml` file created in the root of your repository. See [The .jamie.yml](/guides/the_jamie_yaml/) section for more information and configuration options. You can leave the defaults for now.

Now, it is time to get testing. Use the `--parallel` option to run
your tests in parallel. Trust us, it's faster!

    $ bundle exec jamie test 
