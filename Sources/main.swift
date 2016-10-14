print("ProtoBuffs tester")

var bookInfo = BookInfo()
bookInfo.id = 1
bookInfo.title = "Building Microservices in Go"
bookInfo.author = "Nic Jackson"

var json = ""

print("\n\nSerialize to JSON")
do {
  json = try bookInfo.serializeJSON()
  print("JSON: \(json)")
} catch {
  print("unable to serialize")
}

print("\n\nDeserialize to JSON")
do {
  let serializedBook = try BookInfo(json: json)
  print("Object: \(serializedBook)")
} catch {
  print("Unable to deserialze")
}
