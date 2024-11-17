class Progressline < Formula
  desc "Track commands progress in a compact one-line format"
  homepage "https://github.com/kattouf/ProgressLine"
  license "MIT"

  version = "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-arm64-apple-macosx.zip"
      sha256 "7b885bc415c9339a2944c8651bbf46320002f294ee4bd42deff3ad7505bec4c8"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-apple-macosx.zip"
      sha256 "136a0ac60e9c549d264f2a08a7c2ef251f4f2bb4de4a6e927ed18852d3df0e2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-aarch64-unknown-linux-gnu.zip"
      sha256 "3762a05bba3b7218fbd7d16445634929d0ddd6825952cf8996a0457264ece52c"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-unknown-linux-gnu.zip"
      sha256 "be299b074cdb1240236e19ea58c97dabab5590b3ad9a8d9b18a006a20cb4cfeb"
    end
  end

  def install
    bin.install "progressline"
  end

  test do
    system "#{bin}/progressline", "--help"
  end
end
