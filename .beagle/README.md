# remote

```bash
# 2021.06.05
git remote add upstream git@github.com:operator-framework/operator-sdk.git
git fetch upstream
git merge v1.8.0
```

## build

```bash
git apply .beagle/20210605-helm-fix.patch

docker run -it --rm \
-e GOPROXY=https://goproxy.cn \
-v /go/pkg/mod/:/go/pkg/mod/ \
-v $PWD/:/go/src/github.com/operator-framework/operator-sdk \
-w /go/src/github.com/operator-framework/operator-sdk \
registry.cn-qingdao.aliyuncs.com/wod/golang:1.16.5-alpine \
sh .beagle/build.sh
```
