require File.expand_path("../lib/sensu", __FILE__)

Gem::Specification.new do |s|
  s.name        = "sensu"
  s.version     = Sensu::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sean Porter", "Justin Kolberg"]
  s.email       = ["sean.porter@sonian.net", "justin.kolberg@sonian.net"]
  s.homepage    = "https://github.com/sonian/sensu"
  s.summary     = %q{A server monitoring framework}
  s.description = %q{A server monitoring framework using the publish-subscribe model}
  s.license     = "MIT"
  s.has_rdoc    = false

  s.add_dependency("amqp", "0.7.4")
  s.add_dependency("json")
  s.add_dependency("hashie")
  s.add_dependency("uuidtools")
  s.add_dependency("em-syslog")
  s.add_dependency("em-hiredis")
  s.add_dependency("rack", ">= 1.3.4")
  s.add_dependency("async_sinatra")
  s.add_dependency("thin")

  s.add_development_dependency("rake")
  s.add_development_dependency("minitest", "~> 2.7.0")
  s.add_development_dependency("em-ventually")
  s.add_development_dependency("rest-client")

  s.files         = `git ls-files`.split("\n").reject {|f| f =~ /(dist|test|png)/}
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
