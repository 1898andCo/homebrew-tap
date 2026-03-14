class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "543dd9d85692ff9e719f5d07b4b209f1b932f558341cdf90acaf02bdc1cb7ad5"
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
