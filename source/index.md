---
title: Test Kitchen 1.0
---

Welcome to Test Kitchen 1.0!

Test Kitchen is your clever integration testing friend. Let Kitchen run your tests across different operating system platforms with drivers for various virtualization backends such as [Vagrant](http://vagrantup.com), Amazon EC2, Linux Containers, or any [private drivers](/developers/kitchen_driver/) you want to write.

While Test Kitchen makes it ridiculously easy for you to define platforms and virtualization drivers, it is not intended to define workflow. For those uses, you should look to tools like [Rake](http://rubyrake.org), [Thor](http://whatisthor.com), or [knife-spork](https://github.com/jonlives/knife-spork)

We are actively working to get the new Kitchen docs up and running, and they should should be considered beta, just like Kitchen. In the meantime, here's some Ruby:

```ruby
def we(:are = 'sorry')
  expect(kitchen.docs).to be_up_soon
end
```
