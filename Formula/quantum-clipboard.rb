cask "quantum-clipboard" do
  version "0.1.4"
  sha256 "853cc5898610982441ad71ed1c11928bec2265cc7d85068c48d3a97b610cf0a6"

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
