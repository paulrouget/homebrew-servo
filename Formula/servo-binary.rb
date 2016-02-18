class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-02-18/servo-release-hotfix-mac-2016-02-18.zip"
  sha256 "fb5810c8babec2bb43615a7f95bf18c050e097a6bc7384305cebbd14eb65bdbf"

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
