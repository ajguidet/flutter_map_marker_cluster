import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class MarkerClusterController {
  MarkerClusterLayerState? _state;
  
  void attach(MarkerClusterLayerState state) {
    _state = state;
  }

  void detach() {
    _state = null;
  }

  void spiderfyMarkers(List<String> markerKeys) {
    _state?.spiderfyOnMarker(markerKeys);
  }

  void unspiderfyAll() {
    _state?.unspiderfyAll();
  }

  bool get isAttached => _state != null;
}