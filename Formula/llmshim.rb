class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.19.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "020840a79cfbbbe6f6f78ff87fdfa0fbcde6a26a7a19ae5d0f18954863e79503"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.19.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "323e963ca033b49ddbc12d69a6fbf3d2083e2767f0b536d492f0c29feac2342e"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
