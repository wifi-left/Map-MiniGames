#!/bin/bash
if [ -z "${GITHUB_ENV}" ]; then
    GITHUB_ENV="./build/.env"
    echo "GITHUB_ENV not set, using: ${GITHUB_ENV}"
    
    # 确保 build 目录存在
    mkdir -p ./build
fi
# 设置版本变量
export TZ=Asia/Shanghai

version=$(date '+%Y.%m.%d (%H:%M:%S)')
versionZ=$(date '+%Y.%m.%d')
versionD=$(date '+%Y.%m.%d.%H.%M.%S')
version_=$(date '+%Y_%m_%d')

# 读取 Minecraft 版本
mcversion=$(cat mcversion.txt)

# 设置环境变量供后续步骤使用
echo "version=$version" >> $GITHUB_ENV
echo "versionD=$versionD" >> $GITHUB_ENV
echo "versionDetail=[Minecraft ${mcversion}] ${version}" >> $GITHUB_ENV

echo "Compressing the file..."

# 创建构建目录
mkdir -p ./build

nowdir=$(basename "$PWD")
echo Parent Folder: $nowdir;
cd ..
# 创建 zip 文件（排除脚本自身和 .git 目录）
zip_filename="./${nowdir}/build/(MC${mcversion})_wifi_MiniGames_${version_}.zip"
zip -r "${zip_filename}" "${nowdir}/" \
    -x "${nowdir}/.git/*" \
    -x "${nowdir}/zip.sh" \
    -x "${nowdir}/zip.ps1" \
    -x "${nowdir}/build/*" \
    -x "${nowdir}/.github/*"\

cp "${zip_filename}" "./${nowdir}/build/map.zip"
echo "Compression completed!"