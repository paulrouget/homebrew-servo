class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-06-30/servo-release-master-mac-2016-06-30.zip"
  version "2016.06.30"
  sha256 "b4c616731634099564ee9341590bda18d8cdd0d571c42036df5ef2a697602008"

  bottle :unneeded

  depends_on "openssl"
  depends_on "harfbuzz"

  def install
    prefix.install "servo"
    prefix.install "resources"
    bin.install_symlink prefix/"servo"
  end

  test do
    system bin/"servo", "-w", "-o", "/dev/null", "-x", "http://example.com"
  end
end
