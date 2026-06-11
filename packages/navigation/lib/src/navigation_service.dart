abstract interface class NavigationService {
  void go(String route);

  void push(String route);

  void pop();
}
