build:
	bunx --bun astro build

dev:
	bunx --bun astro dev

deploy: build
	rsync -rvhe ssh --progress --delete ./dist/ tht@sovietlinux.org:/var/www/html/

.PHONY: build deploy
