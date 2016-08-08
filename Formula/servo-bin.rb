class ServoBin < Formula
  desc "Servo, the Parallel Browser Engine Project (binary version)"
  homepage "http://servo.org"
  url "http://people.mozilla.com/~prouget/graphene/brew/servo-2016-08-08.tar.gz"
  version "2016.08.08"
  sha256 "667bf4576ba7ac2fcd7950f46d7de803030d42ff71429f831638a615d674853f"

  bottle :unneeded

  def install
    prefix.install "bin", "libexec", "resources"
  end

  test do
    system bin/"servo", "-o", "/dev/null", "-x", "http://example.com"
  end
end
