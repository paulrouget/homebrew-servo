class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-01/servo-release-hotfix-mac-2016-03-01.zip"
  version "2016.03.01"
  sha256 "2e18589231e29f2393b87405f985a543c8dcfc6f5c05034d74a10cb90eab8700"

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
