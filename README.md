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