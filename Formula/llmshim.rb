class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.12/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "e1736208d8dd27f283514a810d3ea098cb3fe8fdc2d7c2c40078f43e014ca419"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.12/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "7120a7351d1b5ea3e80efea755111acd7c11b3ba47e347d5cbd3421b429fa46a"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
