import 'package:path/path.dart';

const List<String> videoFormats = [
  '.mp4',
  '.mov',
  '.avi',
  '.wmv',
  '.3gp',
  '.mkv',
  '.flv'
];
const List<String> imageFormats = [
  '.jpeg',
  '.png',
  '.jpg',
  '.gif',
  '.webp',
  '.tif',
  '.heic'
];
const List<String> audioFormats = ['.mp3'];
const http = 'http';

bool isLocalFilePath(String path) {
  Uri uri = Uri.parse(path);
  return !uri.scheme.contains(http);
}

bool isVideo(String path) =>
    videoFormats.contains(extension(path).toLowerCase());

bool isImage(String path) =>
    imageFormats.contains(extension(path).toLowerCase());

bool isAudio(String path) =>
    audioFormats.contains(extension(path).toLowerCase());
