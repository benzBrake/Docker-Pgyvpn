FROM benzbrake/alpine
LABEL MAINTAINER Ryan Lieu <github-benzBrake@woai.ru>

ENV PGY_USERNAME PGY_PASSOWRD
COPY entrypoint.sh installPGY.sh /
RUN \
	set -ex && \
	apk --update --no-cache add bash expect rpm libc6-compat libgcc libstdc++ libuuid gcompat musl dpkg && \
	chmod +x /*.sh && \
	/installPGY.sh && \
	rm -f /installPGY.sh
ENTRYPOINT ["/entrypoint.sh"]