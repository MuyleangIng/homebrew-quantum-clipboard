cask "quantum-clipboard" do
  version "0.1.0"
  sha256 "47360a66817ae3063b1356d4867355997c91c2d2eab325a7ebeb67b188db8735"

  url "https://github.com/MuyleangIng/Quantum-Clipboard-Copy/releases/download/#{version}/Quantum-Clipboard.app.zip"
  name "Quantum Clipboard"
  desc "Open-source clipboard manager for macOS (text + image, offline-first)"
  homepage "https://github.com/MuyleangIng/Quantum-Clipboard-Copy"

  app "Quantum Clipboard.app"

  caveats <<~EOS
    This app is unsigned and not notarized.
    On first launch, right-click the app and choose "Open".
  EOS
end
