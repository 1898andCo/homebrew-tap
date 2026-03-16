class TallySemantic < Formula
  desc "Git-backed findings tracker with semantic search (fastembed)"
  homepage "https://github.com/1898andCo/tally"
  version "0.7.2"
  license "Apache-2.0"

  conflicts_with "tally", because: "both install a 'tally' binary"

  on_macos do
    url "https://github.com/1898andCo/tally/releases/download/v0.7.2/tally-semantic-v0.7.2-aarch64-apple-darwin.tar.gz"
    sha256 "c7ffc3c4424deedde5cc35738bc726e0fff3354f86838ff2be720a22a298de87"
  end

  on_linux do
    url "https://github.com/1898andCo/tally/releases/download/v0.7.2/tally-semantic-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9753f8d2ce571e1428518e4166b50ef55087226e06fe9a8743ea343fad440c91"
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
