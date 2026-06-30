class Ghello < Formula
  desc "Tyler Framewok Hello World"
  homepage "https://github.com/ki-aura/ghello"
  url "https://github.com/ki-aura/ghello/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
