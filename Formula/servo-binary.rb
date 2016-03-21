class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-21/servo-release-hotfix-mac-2016-03-21.zip"
  version "2016.03.21"
  sha256 "26e6e109616ca4a7e759775cf0818a81f9bce7bc6ffcf91b76ceef29c516b074"

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
