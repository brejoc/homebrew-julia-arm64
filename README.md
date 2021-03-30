# Install Julia from Source with HomeBrew!

Currently, the [Julia Programming Language](https://julialang.org) has supported pre-build installation packages for many [OS/Hardware combinations](https://julialang.org/downloads). While support for Arm-based Macs (Apple Silicon) is [underway](https://discourse.julialang.org/t/the-future-is-arms/41893), the only method for installing Julia on an M1 Mac is building from source. 

You _could_ simply do a `git clone https://github.com/JuliaLang/julia`, and then `cd julia; make; sudo make install` to install Julia. If you prefer installing all your packages with [HomeBrew](https://docs.brew.sh), this repository is for you!

## HomeBrew Instructions

Note that this installation method is simply a HomeBrew `Formula` that downloads a ZIP of the latest `master` branch of [JuliaLang/julia](https://github.com/JuliaLang/julia), and then runs `make` and `make install`. When a new commit is made to the `master` branch, this formula will download the new version and build Julia from scratch again. __A better system would be for HomeBrew to do a `git clone` of the repo, and then do a `git pull origin master` whenever there's an update__; that way, you wouldn't be running `make` on a fresh repository every time. I don't think HomeBrew supports this though, so this is what I came up with in the meantime. If anyone has a better method, __pull requests / issues / emails are welcome!__
