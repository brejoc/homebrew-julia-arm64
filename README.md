# Install Julia 1.7 Beta 3 with HomeBrew!

Currently, the [Julia Programming Language](https://julialang.org) has pre-built installation packages for many [OS/Hardware combinations](https://julialang.org/downloads). While similar support for Arm-based Macs (Apple Silicon) is [underway](https://discourse.julialang.org/t/the-future-is-arms/41893), the only method for installing Julia on an M1 Mac __today__ is building from source. 

You _could_ simply do a `git clone https://github.com/JuliaLang/julia`, and then `cd julia; make; sudo make install` to install Julia. You could also download the correct binary from the [downloads page](https://julialang.org/downloads/) on Julia's official website. If you prefer installing all your packages with [HomeBrew](https://docs.brew.sh), this repository is for you!

## HomeBrew Instructions

Note that this installation method is simply a HomeBrew `Formula` that downloads a ZIP of the latest `master` branch of [JuliaLang/julia](https://github.com/JuliaLang/julia), and then runs `make` and `make install`. When a new commit is made to the `master` branch, this formula will download the new version and build Julia from scratch again. __A better system would be for HomeBrew to do a `git clone` of the repo, and then do a `git pull origin master` whenever there's an update__; that way, you wouldn't be running `make` on a fresh repository every time. I don't think HomeBrew supports this though, so this is what I came up with in the meantime. If anyone has a better method, __pull requests / issues / emails are welcome!__

1. Install [HomeBrew](https://docs.brew.sh) on MacOs (M1 Macs or Intel Macs)
2. Fork this repository to your GitHub profile (I would never hack you, but you don't know that!)
3. In your terminal, enter `brew tap <your_profile/julia-arm64>`. Note that `julia-arm64` doesn't contain the `homebrew-` part of the repo name. This is on purpose!
4. In your terminal, enter `brew install --verbose julia-arm64` and watch HomeBrew install Julia.
5. Profit?
