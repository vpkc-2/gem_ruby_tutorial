require_relative 'lib/vpkc_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "vpkc_palindrome"
  spec.version       = VpkcPalindrome::VERSION
  spec.authors       = ["Perrine Vantalon"]
  spec.email         = ["perrine@vantalon.com"]

  spec.summary       = %q{Palindrome detector.}
  spec.description   = %q{Learn Enough Ruby palindrome detector.}
  spec.homepage      = "https://github.com/vpkc-2/gem_ruby_tutorial"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

# Prevent pushing this gem to RubyGems.org. To allow pushes either set the
# 'allowed_push_host'
# to allow pushing to a single host or delete this section to allow pushing to # any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
