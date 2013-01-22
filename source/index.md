---
title: Jamie CI
---

Welcome to Jamie CI!

Jamie CI is your clever integration testing friend. Let Jamie run your tests
across different operating system platforms with drivers for various
virtualization backends such as [Vagrant](http://vagrantup.com), Amazon EC2,
Linux Containers, or any [private drivers](/developers/jamie_driver/) you want
to write.

While Jaime CI makes it ridiculously easy for you to define platforms and
virtualization drivers, it is not intended to define workflow. For those uses,
you should look to tools like [Rake](http://rubyrake.org), [Thor](http://whatisthor.com),
or [knife-spork](https://github.com/jonlives/knife-spork)

We are actively working to get the new Jamie docs up and running, and they
should should be considered beta, just like Jamie. In the meantime, here's some
Ruby:

```ruby
def we(:are = 'sorry')
  expect(jamie.docs).to be_up_soon
end
```
