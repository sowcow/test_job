require 'my_hook_listener'

Redmine::Plugin.register :my do
  name 'My plugin'
  author 'Alexander K'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
