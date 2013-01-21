---
title: 'Getting Started'
---

It couldn't be easier to get started with jamie and the jamie-vagrant
driver. Before you get started you should be sure that you already
have a VirtualBox setup and working Ruby MRI 1.9.

```Shell
   $ gem install --pre jamie
   $ Successfully installed jamie-0.1.0.beta3
   1 gem installed
   $ cd cookbook-foo/
   $ jamie init
         create  .jamie.yml
     Add a Driver plugin to your Gemfile? (y/n)> y
       Enter gem name, `list', or `skip'> list
       Gem Name       Latest Stable Release
       jamie-bluebox  0.4.0
       jamie-ec2      0.3.0
       jamie-vagrant  0.5.0
      Enter gem name, `list', or `skip'> jamie-vagrant
         append  Gemfile
```

At this point jamie has created .jamie.yml file that defines 4 base
machine configurations. It has also added a dependency to your Gemfile
that you need to make sure is installed.

```Shell
   $ bundle install 
   # tons of verbose output here
   # . . . 
   $ bundle exec jamie list
     Instance              Last Action
     standard-ubuntu-1204  <Not Created>
     standard-ubuntu-1004  <Not Created>
     standard-centos-63    <Not Created>
     standard-centos-58    <Not Created>
   $ bundle exec jamie test --parallel
```        

The "--parallel" switch above will ensure that your Vagrant VMs are
created, converged, and destroyed all in paralell.
