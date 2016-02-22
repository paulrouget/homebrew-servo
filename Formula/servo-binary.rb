class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-02-22/servo-release-hotfix-mac-2016-02-22.zip"
  version "2016.02.22"
  sha256 "931b216e5ef20f6511a1218e8db53e896df3b103dde12f16ba0183cbeeb0be80"

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
