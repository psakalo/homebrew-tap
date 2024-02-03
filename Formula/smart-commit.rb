class SmartCommit < Formula
  desc "smart-commit is a tool to help you write commit messages using OpenAI API"
  homepage "https://github.com/psakalo/smart-commit"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/smart-commit"
  end

  test do
    system "#{bin}/smart-commit", "--version"
  end
end
