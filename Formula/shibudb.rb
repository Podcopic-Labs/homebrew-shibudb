class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/Podcopic-Labs/ShibuDb"
  url "https://github.com/Podcopic-Labs/ShibuDb-distribution/releases/download/0.0.1/shibudb-0.0.1-darwin-arm64.tar.gz"
  sha256 "dcc1d2a9ef896fb9db5fa2f6141195f47f6db0324498240b72bc15c6a29bafaa"
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
