class Ratrace < Formula
  desc "Rat Race operator CLI — portfolio tooling and MCP server for AI agents"
  homepage "https://ratrace.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/ratrace/v0.1.1/ratrace_darwin_amd64"
      sha256 "6a2c83ca5bbb79deff172c37ec31990a6efba2e5a9c12cacb3e71cc0b0fd583d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/ratrace/v0.1.1/ratrace_darwin_arm64"
      sha256 "d7e43eea3b03e3dd9909440c99733a86d78cd08000618d362caae83c49b9e900"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/ratrace/v0.1.1/ratrace_linux_amd64"
      sha256 "7e93c59c74eafca3d19b31ecad1fb2c2f9118c61ef985f4e4469b41cdefe1296"
    end
    on_arm do
      url "https://shiftstack.ai/dl/ratrace/v0.1.1/ratrace_linux_arm64"
      sha256 "0462960fc488b5e5767f0889539215c54dddd71a350f697de5e55c01f56f0141"
    end
  end

  def install
    bin.install Dir["ratrace_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "ratrace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ratrace version")
  end
end
