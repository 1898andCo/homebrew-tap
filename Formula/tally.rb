class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "6e6f2a55c34cdf513c4956eaf521513157af878217ca49e33657812243c884e4"
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
