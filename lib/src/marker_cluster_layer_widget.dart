import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:flutter_map_marker_cluster/src/map_cluster_controller.dart';

class MarkerClusterLayerWidget extends StatelessWidget {
  final MarkerClusterLayerOptions options;
  final MarkerClusterController? controller;

  const MarkerClusterLayerWidget({
    super.key,
    required this.options,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    final mapController = MapController.of(context);
    final mapCamera = MapCamera.of(context);

    return MarkerClusterLayer(
      mapController: mapController,
      mapCamera: mapCamera,
      controller: controller,
      options: options,
    );
  }
}
