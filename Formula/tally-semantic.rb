class TallySemantic < Formula
  desc "Git-backed findings tracker with semantic search (fastembed)"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "087a09d480f0b1420cfcf30debaf566a44336bfd81b6ebff015920942af974df"
  license "Apache-2.0"
  head "https://github.com/1898andCo/tally.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--features", "semantic-search"
  end

  test do
    system "#{bin}/tally", "--version"
  end
end
