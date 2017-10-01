# danger-homete

[![Gem](https://img.shields.io/gem/v/danger.svg?style=flat)](https://rubygems.org/gems/danger-homete)

danger-homete.

![](./arts/homete.png)

## Installation

### gem

```
$ gem install danger-homete
```

### Bundler

Add the following line to your Gemfile and then run `bundle install`:

```
gem 'danger-homete'
```


## Usage

Just add this line to your `Dangerfile`:

```ruby
homete.test_files = ["*spec.rb", "*Test.java"]
homete.homete(["すごい！","えらい！","がんばった！"])
```