protoc:
	protoc --swift_out=./Sources ./proto/example.proto

build: protoc
	swift build

run: build
	.build/debug/ProtoBuffs-Swift
