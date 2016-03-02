class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-02/servo-release-hotfix-mac-2016-03-02.zip"
  version "2016.03.02"
  sha256 "de60f3ac10bf5dc624440583ad731ecf2eac5a6345052deb623385b7043aa003"

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
