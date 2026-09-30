class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.18.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "51260aaeff039e1278d28ceb4ef2e8909dde8a498179f3b0c243735a220f7e08"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.18.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "045266900b3dec2384dd220282ffe832d0d634f141811fc629e892e7f962bc17"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
