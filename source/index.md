---
title: Jamie CI
---

Welcome to Jamie CI!

Jamie CI is your clever integration testing friend. Let Jamie run your
tests across different operating system _platforms_ with _drivers_ for various
virtualization backends such as [Vagrant](http://vagrantup.com), Amazon EC2, or Linux Containers.

While Jaime CI makes it ridiculously easy for you to define platforms
and virtualization drivers, it is not intended to define workflow. For
those uses, you should look to tools like [Rake](http://rubyrake.org) or [Thor](http://whatisthor.com).

We are actively working to get the new Jamie docs up and running. In the meantime, here's some Ruby:

```ruby
def we(:are = 'sorry')
  expect(jamie.docs).to be_up_soon
end
```
