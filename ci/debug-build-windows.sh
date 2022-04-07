export CI_OS_NAME=windows
scripts/cargo-install-all.sh stable solana-release


export TARBALL_BASENAME=solana-release
export RELEASE_BASENAME=solana-release
export TARGET=x86_64-pc-windows-msvc

tar cvf "${TARBALL_BASENAME}"-$TARGET.tar "${RELEASE_BASENAME}"
bzip2 "${TARBALL_BASENAME}"-$TARGET.tar
cp "${RELEASE_BASENAME}"/bin/solana-install-init solana-install-init-$TARGET
cp "${RELEASE_BASENAME}"/version.yml "${TARBALL_BASENAME}"-$TARGET.yml
