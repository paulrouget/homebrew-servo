class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-06-28/servo-release-master-mac-2016-06-28.zip"
  version "2016.06.28"
  sha256 "e99b55dfcf15034611484b87ae1d274c8b09b33013bcd88385debcf8eee70c65"

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
