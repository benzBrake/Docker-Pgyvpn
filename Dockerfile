FROM benzbrake/alpine
MAINTAINER Ryan Lieu <github-benzBrake@woai.ru>

ENV PGY_USERNAME PGY_PASSOWRD
ADD installPGY.sh /
RUN \
	set -ex && \
	apk --update --no-cache add bash expect rpm libc6-compat libgcc libstdc++ musl dpkg && \
	chmod +x /*.sh && \
	/installPGY.sh
ENTRYPOINT ["/usr/share/pgyvpn/script/pgyvpn_monitor"]