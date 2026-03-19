class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.16/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "85256111240efa76d7f125426851fcd33ed2a3d064e1e49b6eb479a90514f722"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.16/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "82cdd22ab949a73df4e9da80631673989677ffaee748a6368d16895592e507be"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
