class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/1898andCo/tally/releases/download/v0.7.2/tally-v0.7.2-aarch64-apple-darwin.tar.gz"
    sha256 "4db9c2ac6fac6fac5743a74d781c978f5cd8b7ce44db83821554fdd1771db85f"
  end

  on_linux do
    url "https://github.com/1898andCo/tally/releases/download/v0.7.2/tally-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "39154df646578bf80a1707b12676129906d4f3473dabaa7bda3e4ee7c58b2c54"
  end

  livecheck do
    url "https://github.com/1898andCo/tally/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "tally"
  end

  test do
    system "#{bin}/tally", "--version"
  end
end
