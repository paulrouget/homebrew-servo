class ServoBin < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.org/~prouget/graphene/brew/PACKAGENAME"
  version "2016-08-02"
  sha256 "62183b320a4350fa1d55855a93ffe3892d7e738d614288b7bd19e8662def36e0"

  bottle :unneeded

  def install
    prefix.install "bin", "libexec", "resources"
  end

  test do
    system bin/"servo", "-o", "/dev/null", "-x", "http://example.com"
  end
end
