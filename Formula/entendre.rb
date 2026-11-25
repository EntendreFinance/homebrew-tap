class Entendre < Formula
  desc "Command-line tool for the Entendre accounting platform"
  homepage "https://entendre.ai"
  version "0.1.0-alpha.5"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/entendre-cli-releases/v0.1.0-alpha.5/entendre-darwin-arm64"
      sha256 "1531e31df325a35d6c33af9e0990063d551bdb540b51ff61aa86067ed458c784"
    end
    on_intel do
      url "https://storage.googleapis.com/entendre-cli-releases/v0.1.0-alpha.5/entendre-darwin-x64"
      sha256 "71e93d427828dd88a0e94f720940b5bf15be31005413f0963098dfb7f4c80652"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/entendre-cli-releases/v0.1.0-alpha.5/entendre-linux-arm64"
      sha256 "d4f4207edbd0603698080b79cd2517636fe5cc39ace8ef1730ae97bd29f23a17"
    end
    on_intel do
      url "https://storage.googleapis.com/entendre-cli-releases/v0.1.0-alpha.5/entendre-linux-x64"
      sha256 "fcd4018c92cc8b25e2271b4ded3ea90ebe2f385a394710672f0446ea3856132b"
    end
  end

  def install
    bin.install Dir["*"].first => "entendre"
    chmod 0755, bin/"entendre"
    generate_completions_from_executable(bin/"entendre", "completion")
  end

  def caveats
    <<~EOS
      Update with: brew upgrade entendre
      On Linux, the login needs libsecret and an unlocked keyring.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/entendre --version")
  end
end
