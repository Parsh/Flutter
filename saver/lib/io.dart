 import "dart:io";
 import "dart:convert";

 import "package:path_provider/path_provider.dart" as path;

  File jsonFile;
  Directory dir;
  String fileName = "ShoppingList.json";
  bool fileExists = false;
  List<Map> fileContent;

  void retrieveData() async{
  path.getApplicationDocumentsDirectory().then((Directory directory){
      dir = directory;
      jsonFile = new File(dir.path + '/' + fileName);
      jsonFile.exists().then((bool val){
        fileExists = val;
        return fileExists;
      }).then((bool fileEx){
        if (fileEx) {
           print(JSON.decode(jsonFile.readAsStringSync()));
        }
      });
    });
   
}
  
 
 void createFile(content, Directory dir, String fileName, bool fileExists){
    print("Creating File");
    path.getApplicationDocumentsDirectory().then((Directory directory){
      dir = directory;
    })
    File file = new File(dir.path + '/' + fileName);
    file.createSync();
    fileExists = true;
    List lst = [];
    lst.add(content);
    print(lst);
    print(JSON.encode(lst))
    file.writeAsStringSync(JSON.encode(lst));
    print('Wrote!');
  }

  void writeToFile(String item, int quantity){
    print('Writing to File!');
    Map content = {'item': item, 'quantity': quantity};
    if (fileExists){
      print('File Exists');
      print(JSON.decode(jsonFile.readAsStringSync()));
      List jsonFileContent = JSON.decode(jsonFile.readAsStringSync());
      jsonFileContent.add(content);
      print(jsonFileContent);
      jsonFile.writeAsStringSync(JSON.encode(jsonFileContent));
    }
    else{
      print('File does not exits');
      createFile(content, dir, fileName, fileExists);
    }
  }

  void readFromFile(){

  }