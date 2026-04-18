.PHONY: build-presentation
build-presentation:
	@test -n "$(NAME)" || { echo "Usage: make output NAME=<presentations/'dir name'>"; exit 1; }
	docker run --rm -v ${CURDIR}/presentations/$(NAME):/home/marp/app marpteam/marp-cli:v4.3.1 --pdf --allow-local-files slides.md --output $(NAME).pdf