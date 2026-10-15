class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.28.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "5ca99164d5803fc64ecacb4e5cd9ea210a9f2c202e3202c94c043ae9f51595e7"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.28.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "d8e8100982db0ab1f80258f6a4e14ad5b821e2464827cdfc5de12571bac75102"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
