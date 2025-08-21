class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/shibudb-org/shibudb-server"
  url "https://github.com/user-attachments/files/21918036/shibudb-1.0.2-darwin-arm64.tar.gz"
  sha256 "8260fd4f8876897f3ca1f0b340e1cc977c2148353a6b00b8cbd8375eebc809c7"
  version "1.0.2"
  license "AGPL3"

  def install
    bin.install "shibudb"
    lib.install "libfaiss.dylib", "libfaiss_c.dylib"
  end

  test do
    system "#{bin}/shibudb", "--help"
  end
end
