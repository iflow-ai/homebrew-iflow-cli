class IflowCli < Formula
  desc "AI-powered CLI that embeds in your terminal for coding tasks and workflow automation"
  homepage "https://platform.iflow.cn"
  url "https://registry.npmjs.org/@iflow-ai/iflow-cli/-/iflow-cli-0.5.16.tgz"
  sha256 "7ee51abb834fa6cf2cfc7fc124d59ccae89a6f413e4a8046295cbe7f8b0bfb59"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "iflow", shell_output("#{bin}/iflow --version 2>&1", 0)
  end
end
