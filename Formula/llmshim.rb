class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.16.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "5fb2098b12fd90b8f2938c7c9f37c8aac40705862afc8101b1938b254974fba1"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.16.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "398a4c4c0346560c824790d8fd781293f7f8eaac1cbb9ee6fb5ac8a2c9678949"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
