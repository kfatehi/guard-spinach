## guard-spinach

My fork of guard-spinach such that I could add `generate`, `backtrace`, and `tags` to it.

Thanks.

### Example Guardfile snippet

This snippet exposes all current options

```ruby
guard 'spinach', all_on_start: true, generate:true, backtrace:true, tags:["@javascript", "~@disabled"] do
  watch(%r|^features/(.*)\.feature|)
  watch(%r|^features/steps/(.*)([^/]+)\.rb|) do |m|
    "features/#{m[1]}#{m[2]}.feature"
  end
end
```

### tags is not working properly as of now, I am just not using it for now.
```
Feature: Testing tag feature
/Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/parser.rb:21:in `read': No such file or directory - ,~@disabled (Errno::ENOENT)
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/parser.rb:21:in `open_file'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/runner.rb:66:in `block in run'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/runner.rb:63:in `each'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/runner.rb:63:in `run'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/lib/spinach/cli.rb:23:in `run'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/gems/spinach-0.5.2/bin/spinach:16:in `<top (required)>'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/bin/spinach:23:in `load'
  from /Users/keyvan/.rvm/gems/ruby-1.9.3-p194@testing/bin/spinach:23:in `<main>'
```