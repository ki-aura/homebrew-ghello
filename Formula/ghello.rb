class Ghello < Formula
  desc "Tyler Framewok Hello World"
  homepage "https://github.com/ki-aura/ghello"
  url "https://github.com/ki-aura/ghello/archive/refs/tags/v1.2.3.tar.gz"
  sha256 "a1b485055c4c1c10864c0234dd45a2b3b7d548866b958b2c8c604ea3dd2af676"
  license "MIT"

  def install
    system "make", "release"
    bin.install "ghello"
  end

  test do
    # Check basic execution
    system "#{bin}/ghello", "-h"
  end
end
