class Ghello < Formula
  desc "Tyler Framewok Hello World"
  homepage "https://github.com/ki-aura/ghello"
  url "https://github.com/ki-aura/ghello/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "c000f78fd165e5c8e50cf94bf1a3c3ee2599ef87400953c40eb85774ed34c306"
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
