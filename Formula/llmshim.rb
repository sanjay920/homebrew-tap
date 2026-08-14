class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.2/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "788897d9522abc122c7d4a20a8968822d352c1e2e8ac7e2ebd5927aaf9f66f2f"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.2/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "cc967c2cb7b71e586ed9715fd4c2f82a199fbfcfcb1c951ecf99268f00a01491"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
