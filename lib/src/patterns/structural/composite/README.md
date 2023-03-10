Composite
===

**Composite** is a structural design pattern that lets you compose objects into tree structures and
then work with these structures as if they were individual objects.

#### Runner

```dart
class RunnerComposite implements IRunner {
  const RunnerComposite();

  @override
  Future<String> invoke() async {
    final graphics = CompoundGraphic()
      ..add(Circle())
      ..add(Rectangle())
      ..add(Circle())
      ..paddingLeft(3);

    return Future.value(graphics.draw());
  }
}
```

#### Output

```shell
Composite
         *  *  *        
      *  *  *  *  *     
   *  *  *  *  *  *  *  
   *  *  *  *  *  *  *  
   *  *  *  *  *  *  *  
      *  *  *  *  *     
         *  *  *  
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
   *  *  *  *  *  *  *
         *  *  *        
      *  *  *  *  *     
   *  *  *  *  *  *  *  
   *  *  *  *  *  *  *  
   *  *  *  *  *  *  *  
      *  *  *  *  *     
         *  *  * 
```