class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-15/servo-release-hotfix-mac-2016-03-15.zip"
  version "2016.03.15"
  sha256 "8502dbdc683ed7e43c274e4efdc257971c95719fcb6956c8679b3770d89aa00a"

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
