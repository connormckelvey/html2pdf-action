.PHONY: html2pdf
html2pdf:
	mkdir -p ./dist
	go build -o ./dist/ ./cmd/...


