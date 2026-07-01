class Ghello < Formula
  desc "Tyler Framewok Hello World"
  homepage "https://github.com/ki-aura/ghello"
  url "https://github.com/ki-aura/ghello/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "c8e2d894f77a38ff8d263fd3f2c669465c77eddf33ef8295423b8cd4e5f46dae"
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
