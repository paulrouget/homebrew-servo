class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-06-08/servo-release-master-mac-2016-06-08.zip"
  version "2016.06.08"
  sha256 "7aea4d45649d072da4f9092d195925a4e372c468e7ac5a49b6f9f20dfdbb9484"

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
