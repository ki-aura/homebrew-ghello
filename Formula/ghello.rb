class Ghello < Formula
  desc "Tyler Framewok Hello World"
  homepage "https://github.com/ki-aura/ghello"
  url "https://github.com/ki-aura/ghello/archive/refs/tags/v1.2.4.tar.gz"
  sha256 "f32c5d84150a5f54320ef758f877e260cd89181ec6c895d746defc36f5e7bb47"
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
