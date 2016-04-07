class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-04-07/servo-release-hotfix-mac-2016-04-07.zip"
  version "2016.04.07"
  sha256 "cc261001387b7ddf24fed34d98881a5c42ffeed8a2e1f6ac7ad05b9d66b6af23"

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
