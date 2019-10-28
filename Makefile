IMG := bchatelard/debug

all: debug

debug:
	docker build -t $(IMG):latest .

push:
	docker push $(IMG):latest
