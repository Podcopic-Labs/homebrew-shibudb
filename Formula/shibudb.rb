class Shibudb < Formula
  desc "Lightweight embedded database with KV and vector support"
  homepage "https://github.com/Podcopic-Labs/ShibuDb"
  url "https://github.com/Podcopic-Labs/ShibuDb-distribution/releases/download/0.0.1/shibudb-0.0.1-darwin-arm64.tar.gz"
  sha256 "835d1c5f10c4882578b323eeeeed392060c5873c0c7a7ec5eae7cf596e0336d0"
  version "0.0.1-t"
  license "MIT"

  def install
    bin.install "shibudb"
    lib.install "libfaiss.dylib", "libfaiss_c.dylib"
  end

  def caveats
    <<~EOS
      FAISS libraries are installed in #{lib}
      If you get dynamic linking issues, you may need to export DYLD_LIBRARY_PATH:

        export DYLD_LIBRARY_PATH=#{opt_lib}:$DYLD_LIBRARY_PATH

      Or add RPATH manually to the binary:

        install_name_tool -add_rpath "#{opt_lib}" "#{opt_bin}/shibudb"

      To verify installation:
        shibudb --help
    EOS
  end

  test do
    system "#{bin}/shibudb", "--help"
  end
end

