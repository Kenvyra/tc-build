FROM registry.fedoraproject.org/fedora-minimal:36

RUN microdnf install -y \
            bc \
            binutils-devel \
            bison \
            ccache \
            clang \
            cmake \
            diffutils \
            elfutils-libelf-devel \
            file \
            findutils \
            flex \
            git \
            lld \
            make \
            ninja-build \
            openssl-devel \
            patchelf \
            perf \
            python3 \
            tar \
            texinfo \
            uboot-tools \
            xz \
            zlib-devel

CMD ["bash", "/src/entrypoint.sh"]
