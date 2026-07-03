class Inksgame < Formula
    desc "design games in Inkscape"
    homepage "https://codeberg.org/Luca295/inksgame"
    head "https://codeberg.org/Luca295/inksgame/archive/master.zip"
    depends_on "go" => :build
    depends_on "inksgame-helper"

    def install
        system "go", "build", *std_go_args(ldflags: "-X main.version=HEAD")
    end
end
