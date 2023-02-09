/// Used for evaluating a block of several statements where an expression is required.
void invoke<ReturnType>(ReturnType Function() operation) {
  operation();
}

/// Often used for executing a code block only with non-null values.
extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operation_for) {
    return operation_for(this);
  }

  T also(void Function(T self) operation_for) {
    operation_for(this);
    return this;
  }
}
