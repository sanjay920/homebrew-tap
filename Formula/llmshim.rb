class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.12.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "3b9990c2042491a4621d86a254411b3100edb0203e627d0dbbcd9fe6c461d3dd"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.12.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "873bd795e7dfcd8a4d95313332080197d31b5f6d02c878cd466f40de8cfa622c"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
