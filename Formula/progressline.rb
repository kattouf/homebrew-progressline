class Progressline < Formula
  desc "Track commands progress in a compact one-line format"
  homepage "https://github.com/kattouf/ProgressLine"
  license "MIT"

  version = "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-arm64-apple-macosx.zip"
      sha256 "7a4e376ca4def8b322f6c1656a86db722bb0b140342db04522c129797189b310"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-apple-macosx.zip"
      sha256 "f995887bf9a73663f531e3524aa27eec1539468d784fe2727fb4f19b98e0178e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-aarch64-unknown-linux-gnu.zip"
      sha256 "332f8ef2db8f9e2cb864f553da58aa50f017adc7b3bb5f5996c88e1363f6cf5b"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-unknown-linux-gnu.zip"
      sha256 "e6559c1e7989dcc9b0528a6c68706fbb1fdcd63eb6f7c28f7fe1050fee44c77b"
    end
  end

  def install
    bin.install "progressline"
  end

  test do
    system "#{bin}/progressline", "--help"
  end
end
