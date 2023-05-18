FROM benzbrake/alpine
LABEL MAINTAINER Ryan Lieu <github-benzBrake@woai.ru>

ENV PGY_USERNAME PGY_PASSOWRD
COPY installPGY.sh entrypoint.sh /
RUN \
	set -ex && \
	apk --update --no-cache add bash coreutils net-tools util-linux-dev openrc iptables libc6-compat libgcc libstdc++ libuuid gcompat musl dpkg && \
	cd / && \
	chmod +x *.sh && \
	bash installPGY.sh
ENTRYPOINT ["/entrypoint.sh"]