class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-02-18/servo-release-hotfix-mac-2016-02-18.zip"
  sha256 "7d722633d1103d3d7da6561a020e9a13f5de5ef5d93fcba4994a34b9b1f3d4ee"

  bottle :unneeded

  depends_on "openssl"


  def install
    prefix.install "servo/servo"
    prefix.install "resources"
    bin.install_symlink prefix/"servo"
  end

  test do
    system bin/"servo", "-w", "-o", "/dev/null", "-x", "http://example.com"
  end
end
