 import "dart:io";
 import "dart:convert";

 import "package:path_provider/path_provider.dart" as path;

  File jsonFile;
  String fileName = "ShoppingList.json";
  bool fileExists = false;
  List<Map> fileContent;

  void retrieveData() async{
  path.getApplicationDocumentsDirectory().then((Directory direc){
      jsonFile = new File(direc.path + '/' + fileName);
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
  
 
 void createFile(content, Directory direc, String fileName, bool fileExists){
    print("Creating File");
    File file = new File(direc.path + '/' + fileName);
    file.createSync();
    fileExists = true;
    List lst = [];
    lst.add(content);
    file.writeAsStringSync(JSON.encode(lst));
    print('Wrote!');
  }

  void writeToFile(String item, int quantity) async{

    path.getApplicationDocumentsDirectory().then((Directory direc){
    print('Writing to File!');
    Map content = {'item': item, 'quantity': quantity};
    if (fileExists){
      print('File Exists');
      jsonFile = new File(direc.path + '/' + fileName);
      List jsonFileContent = JSON.decode(jsonFile.readAsStringSync());
      jsonFileContent.add(content);
      print(jsonFileContent);
      jsonFile.writeAsStringSync(JSON.encode(jsonFileContent));
    }
    else{
      print('File does not exits');
      createFile(content, direc, fileName, fileExists);
    }
    });
  }

  void readFromFile(){

  }