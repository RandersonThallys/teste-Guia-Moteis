class ResponseEntity<T> {
  final bool success;
  final T data;
  final List messages;

  ResponseEntity({
    required this.success,
    required this.data,
    required this.messages,
  });
}
