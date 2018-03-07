 import "dart:io";
 import "dart:convert";
 
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
      fileContent = jsonFileContent;
    }
    else{
      print('File does not exits');
      createFile(content, dir, fileName, fileExists);
    }
  }