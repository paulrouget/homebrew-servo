class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-03-31/servo-release-hotfix-mac-2016-03-31.zip"
  version "2016.03.31"
  sha256 "a3b7a9e081c7f11a33ea6f3beb2df2f4ea08532b3cf0f7fc99ed8f481ad49a25"

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
