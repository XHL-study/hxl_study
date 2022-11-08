///
/// 扩展Function
///

extension CustomFunction on Function {
  ///获取方法名称
  String name() {
    String s = toString();
    return s.substring(s.indexOf("'") + 1, s.lastIndexOf("'"));
  }
}
