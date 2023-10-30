IMG := bchatelard/debug
PLATFORM := linux/amd64

all: debug

debug:
	docker build --platform $(PLATFORM) -t $(IMG):latest .

push:
	docker push $(IMG):latest
