The scripts generate Shogi AI binaries that can be run on Amazon Linux 2. The scripts run on macOS.

# Requirements

- Docker Engine
- gdown (`pip install gdown`)

# Building Engines

```
$ cd engine/YO489m
$ sh build.sh
```

# Downloading Eval Functions

```
$ cd eval/Suisho2
$ sh download.sh
```

# Test

```
$ docker run -v (pwd):/home -it amazonlinux:2.0.20191016.0 ./home/engine/YO489m/out/YO489m-sse42
usi
setoption name EvalDir value /home/eval/Suisho2
isready
usinewgame
position sfen l5knl/1r2g1g2/2n1p1sp1/p1ppspp1p/1p5P1/P1PPSPP1P/1PS1P1N2/2G1G2R1/LNK5L b Bb
go byoyomi 10000
```