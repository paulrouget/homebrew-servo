class ServoBinary < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/2016-02-18/servo-release-hotfix-mac-2016-02-18.zip?bypass-cache=1"
  sha256 "236e69a73d31a5b70fd08e697a0644c22e01adbc30320fe2544d22905608546d"

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
