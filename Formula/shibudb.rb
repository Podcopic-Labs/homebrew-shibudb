class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/Podcopic-Labs/ShibuDb"
  url "https://github.com/Podcopic-Labs/ShibuDb-distribution/releases/download/0.0.1/shibudb-0.0.1-darwin-arm64.tar.gz"
  sha256 "935ae6072056fba22882db0d197eb811a239d6e418c080a6fde851e6e8c68556"
  version "0.0.1"
  license "MIT"

  def install
    bin.install "shibudb"
    lib.install "libfaiss.dylib", "libfaiss_c.dylib"
  end

  test do
    system "#{bin}/shibudb", "--help"
  end
end
