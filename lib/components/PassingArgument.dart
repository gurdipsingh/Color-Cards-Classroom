class PassingArgument{
  final String name;
  final Map navigation;

  const PassingArgument(this.name, this.navigation);

  setElementToKey(key,element){
    this.navigation['${key}'] = element;
  }

  getElement(key){
    return this.navigation[key];
  }
}

