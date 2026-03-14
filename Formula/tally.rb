class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "94498818175e155ea98c9e075be9ec8b1fce5f2039c58834ce7e49466fb7eb55"
  license "Apache-2.0"
  head "https://github.com/1898andCo/tally.git", branch: "develop"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tally", "--version"
  end
end
