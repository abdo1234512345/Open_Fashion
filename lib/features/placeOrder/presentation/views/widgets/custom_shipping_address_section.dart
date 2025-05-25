import 'package:fashion/features/AddAddress/presentation/views/add_address.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/address_info.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CustomShippingAddressSection extends StatefulWidget {
  const CustomShippingAddressSection({super.key});

  @override
  State<CustomShippingAddressSection> createState() =>
      _CustomShippingAddressSectionState();
}

class _CustomShippingAddressSectionState
    extends State<CustomShippingAddressSection> {
  dynamic _saveAddress;

  void _openAddress(context) async {
    final addressData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress()),
    );

    if (addressData != null) {
      setState(() {
        _saveAddress = addressData;
      });
    }
  }

  void _editAddress() async {
    final newAddress = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress(editData: _saveAddress)),
    );

    setState(() {
      _saveAddress = newAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _saveAddress != null
                ? AddressInfo(onTap: _editAddress, saveAddress: _saveAddress)
                : SizedBox.shrink(),
            _saveAddress == null
                ? GestureDetector(
                  onTap: () {
                    _openAddress(context);
                  },
                  child: CustomContainer(
                    text: 'Add Shipping Address',
                    iconData: Icons.add,
                    isFree: false,
                  ),
                )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
