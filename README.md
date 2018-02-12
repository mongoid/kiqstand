Kiqstand [![Build Status](https://secure.travis-ci.org/mongoid/kiqstand.svg?branch=master)](http://travis-ci.org/mongoid/kiqstand)
========

Kiqstand is a middleware for Sidekiq for use with Mongoid 3.

Compatibility
-------------

**If you are running Mongoid 4 (or the master), you do not need Kiqstand.**

Kiqstand is tested against MRI 1.9.3, 2.0.0.

- Use Kiqstand 1.0.x with Mongoid 3.0.x
- Use Kiqstand 1.1.x with Mongoid 3.1.x

Documentation
-------------

Include Kiqstand in your `Gemfile`.

```ruby
gem "kiqstand"
```

If you're not using Rails, ensure you require it.

```ruby
require "kiqstand"
```

Add the middleware to the Sidekiq server middleware.

```ruby
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add Kiqstand::Middleware
  end
end
```

License
-------

Copyright (c) 2012-2013 Durran Jordan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Credits
-------

Durran Jordan: durran at gmail dot com
