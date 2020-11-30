class PassingArgument{
  String name;
  Map navigation;
  Map settings = {"language": "GERMAN"};

    PassingArgument(this.name, this.navigation);

  setName(String name){
    this.name = name;
  }

  setElementToKey(key,element){
    this.navigation['${key}'] = element;
  }

  setLanguage(String language){
    this.settings["language"] = language;
  }

  getElement(key){
    return this.navigation[key];
  }

  getLanguage(){
    return this.settings["language"];
  }

}

