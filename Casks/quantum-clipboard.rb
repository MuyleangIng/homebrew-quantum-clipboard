cask "quantum-clipboard" do
  version "0.1.0"
  sha256 "47360a66817ae3063b1356d4867355997c91c2d2eab325a7ebeb67b188db8735"

  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/0.1.0/Quantum-Clipboard.app.zip"
  name "Quantum Clipboard"
  desc "Open-source clipboard manager for macOS"
  homepage "https://github.com/MuyleangIng/Quantum-Clipboard-Copy"

  app "Quantum Clipboard.app"

  caveats <<~EOS
    Quantum Clipboard is an open-source app and is not notarized.

    After installation, run:

      xattr -dr com.apple.quarantine "/Applications/Quantum Clipboard.app"

    Then open the app normally.
  EOS
end
