class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/Podcopic-Labs/ShibuDb"
  url "https://github.com/user-attachments/files/21777762/shibudb-1.0.0-darwin-arm64.tar.gz"
  sha256 "71a58914d17019824494ce43ddfafcd429efac13492d0190e8c1d6a61aa41d0f"
  version "1.0.0"
  license "AGPL3"

  def install
    bin.install "shibudb"
    lib.install "libfaiss.dylib", "libfaiss_c.dylib"
  end

  test do
    system "#{bin}/shibudb", "--help"
  end
end
