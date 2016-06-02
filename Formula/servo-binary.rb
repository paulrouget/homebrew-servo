class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-06-02/servo-release-hotfix-mac-2016-06-02.zip"
  version "2016.06.02"
  sha256 "30dea96d227e36cd896c93292a8840584f62f5db18c05590ef776ac5ad2f26e0"

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
