class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-29/servo-release-hotfix-mac-2016-03-29.zip"
  version "2016.03.29"
  sha256 "4379727b09ad47c936d14ac197af5e741383d98b6a5aaa91119171b02afa4077"

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
