class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/shibudb-org/shibudb-server"
  url "https://github.com/user-attachments/files/21777762/shibudb-1.0.1-darwin-arm64.tar.gz"
  sha256 "109b9b57a0c3290d3814919aa03b55fadb284cc002d7c86a2f7b3d9d68385260"
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
