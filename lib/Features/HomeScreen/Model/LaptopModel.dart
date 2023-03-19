// ignore_for_file: file_names

class Laptop {
  String brand;
  String cpuBrand;
  String cpuName;
  int cpuGen;
  String cpuCores;
  int ramSize;
  String ramType;
  int ssd;
  int hdd;
  String gpuBrand;
  String gpuName;
  int gpuSize;
  double size;
  String resolution;
  String displayTech;
  int fps;
  String os;
  String condition;

  Laptop({
    required this.brand,
    required this.cpuBrand,
    required this.cpuName,
    required this.cpuGen,
    required this.cpuCores,
    required this.ramSize,
    required this.ramType,
    required this.ssd,
    required this.hdd,
    required this.gpuBrand,
    required this.gpuName,
    required this.gpuSize,
    required this.size,
    required this.resolution,
    required this.displayTech,
    required this.fps,
    required this.os,
    required this.condition,
  });
}
