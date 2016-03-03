class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-03/servo-release-hotfix-mac-2016-03-03.zip"
  version "2016.03.03"
  sha256 "5957f2c80bdcb61da4c51f5f278db2732495bb2ea1bb39e2201917917e9b8107"

  bottle :unneeded

  depends_on "openssl"

  def install
    prefix.install "servo"
    prefix.install "resources"
    bin.install_symlink prefix/"servo"
  end

  test do
    system bin/"servo", "-w", "-o", "/dev/null", "-x", "http://example.com"
  end
end
