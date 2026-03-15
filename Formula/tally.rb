class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "d9286f27f0557a275a8df56b00b67a656e701a02c1cd3e3c0dbc87d8415fb779"
  license "Apache-2.0"
  head "https://github.com/1898andCo/tally.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tally", "--version"
  end
end
