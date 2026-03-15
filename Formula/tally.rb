class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "9a212cd0aa50ea385dac5ea748d7ba6d585c5d3f6cce9f8cc6cfaa36c2969f97"
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
