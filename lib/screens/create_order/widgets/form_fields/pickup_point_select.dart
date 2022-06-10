import 'package:farm_market_app/shared/models/pickup_model.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class PickupPointSelectWidget extends StatefulWidget {
  const PickupPointSelectWidget({
    required this.addresses,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final List<PickupModel> addresses;
  final TextEditingController controller;

  @override
  State<PickupPointSelectWidget> createState() =>
      _PickupPointSelectWidgetState();
}

class _PickupPointSelectWidgetState extends State<PickupPointSelectWidget> {
  late final MapController _mapController;
  PickupModel? _selectedPoint;

  static const _tileUrlTemplate =
      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';

  @override
  void initState() {
    super.initState();
    _selectedPoint = widget.addresses.first;
    _mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.addresses.map(
          (e) => RadioListTile(
            value: e,
            groupValue: _selectedPoint,
            onChanged: _onRadioButtonPressed,
            title: Text(
              e.address,
              style: Theme.of(context).textTheme.labelTextStyle,
            ),
          ),
        ),
        SizedBox(
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                zoom: 16.0,
                center: LatLng(
                  widget.addresses.first.latitude.toDouble(),
                  widget.addresses.first.longitude.toDouble(),
                ),
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate: _tileUrlTemplate,
                  subdomains: ['a', 'b', 'c'],
                  tileProvider: const NonCachingNetworkTileProvider(),
                  tileBounds: LatLngBounds(
                    _selectedPointCoordinates(10, 10),
                    _selectedPointCoordinates(-10, -10),
                  ),
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      point: _selectedPointCoordinates(),
                      width: 15,
                      height: 15,
                      builder: (context) => Container(
                        width: 15,
                        height: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsTheme.badgeColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onRadioButtonPressed(PickupModel? value) {
    assert(value != null);
    widget.controller.text = value!.address;
    _mapController.move(
      LatLng(value.latitude.toDouble(), value.longitude.toDouble()),
      _mapController.zoom,
    );
    setState(() => _selectedPoint = value);
  }

  LatLng _selectedPointCoordinates(
      [double changeLat = 0.0, double changeLong = 0.0]) {
    return LatLng(
      _selectedPoint!.latitude.toDouble() - changeLat,
      _selectedPoint!.longitude.toDouble() - changeLong,
    );
  }
}
