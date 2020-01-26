.PHONY: images
images: builder runtime

.PHONY: builder
builder:
	docker build -t donkeybanana/s2i-erlang-builder builder

.PHONY: runtime
runtime:
	docker build -t donkeybanana/s2i-erlang-runtime runtime

.PHONY: publish
publish: images
	docker push donkeybanana/s2i-erlang-builder
	docker push donkeybanana/s2i-erlang-runtime
