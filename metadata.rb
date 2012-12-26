maintainer        "Thomas Meeus"
maintainer_email  "thomas@sector7g.be"
license           "MIT"
description       "Installs Pulse-Eight LibCEC from GIT"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "libcec", "Installs LibCEC"
supports          "ubuntu", ">= 12.10"

%w{ apt git }.each do |recipe|
  depends recipe
end