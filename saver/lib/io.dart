 import "dart:io";
 import "dart:convert";

 import "package:path_provider/path_provider.dart" as path;

  File jsonFile;
  Directory dir;
  String fileName = "ShoppingList.json";
  bool fileExists = false;
  Map fileContent;

 retrieveData(){
   path.getApplicationDocumentsDirectory().then((Directory directory){
      dir = directory;
      jsonFile = new File(dir.path + '/' + fileName);
      jsonFile.exists().then((bool val){
        fileExists = val;
        return fileExists;
      }).then((bool fileEx){
        if (fileEx) {
            fileContent = JSON.decode(jsonFile.readAsStringSync());
            return fileContent;
        }
        else return {};
      });
    });
}
  
 
 void createFile(Map<String, int> content, Directory dir, String fileName, bool fileExists){
    print("Creating File");
    File file = new File(dir.path + '/' + fileName);
    file.createSync();
    fileExists = true;
    file.writeAsStringSync(JSON.encode(content));
    print('Wrote!');
  }

  void writeToFile(String item, int quantity, Directory dir, bool fileExists, File jsonFile, Map fileContent, String fileName){
    print('Writing to File!');
    Map<String, int> content = {item: quantity};
    if (fileExists){
      print('File Exists');
      Map<String, int> jsonFileContent = JSON.decode(jsonFile.readAsStringSync());
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(JSON.encode(jsonFileContent));
      fileContent = jsonFileContent; //Replace it with a reading mechanism
    }
    else{
      print('File does not exits');
      createFile(content, dir, fileName, fileExists);
    }
  }

  void readFromFile(){

  }