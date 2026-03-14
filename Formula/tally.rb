class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "8471938931ecc107c4be6c6eb13b93724d4f3ad3580732352834ad9fbf50b9d8"
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
