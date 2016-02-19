class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-02-19/servo-release-hotfix-mac-2016-02-19.zip"
  sha256 "0fa6eb7040a778d6afb47949638d9b3338c88bfb1bfe09ecfb2e9732916675a0"

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
