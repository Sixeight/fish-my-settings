.PHONY: install
install: config.fish
	ln -fs $$(pwd)/config.fish ${HOME}/.config/fish/config.fish

.PHONY: clean
clean:
	rm -f ${HOME}/.config/fish/config.fish
