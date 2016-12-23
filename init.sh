# TODO: Probably can convert to submodule
git clone --depth 1 https://github.com/zeit/hyper.git
cd hyper
git checkout 1.0.0
cd ../
docker build -t hyper-build .
docker run -v $(pwd)/hyper:/hyper -it hyper-build
