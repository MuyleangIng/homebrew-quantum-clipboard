class QuantumClipboard < Formula
  desc "Open-source offline clipboard manager for macOS"
  homepage "https://github.com/MuyleangIng/Quantum-Clipboard-Copy"
  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/v0.1.0/Quantum-Clipboard.app.zip"
  sha256 "47360a66817ae3063b1356d4867355997c91c2d2eab325a7ebeb67b188db8735"
  version "0.1.0"

  depends_on macos: :monterey

  def install
    prefix.install "Quantum Clipboard.app"
  end

  def caveats
    <<~EOS
      Quantum Clipboard has been installed.

      To launch:
        open "#{opt_prefix}/Quantum Clipboard.app"

      Optional (install into /Applications):
        cp -R "#{opt_prefix}/Quantum Clipboard.app" /Applications/
    EOS
  end
end
