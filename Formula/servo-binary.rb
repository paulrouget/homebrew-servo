class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-14/servo-release-hotfix-mac-2016-03-14.zip"
  version "2016.03.14"
  sha256 "ab04afad0e88accd71d5bad72a03aeae4188d4b8a3d1e8063a67f6bc3f0e8df6"

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
