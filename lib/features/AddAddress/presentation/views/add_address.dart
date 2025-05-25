import 'package:fashion/core/widgets/custom_app_bar.dart';
import 'package:fashion/core/widgets/custom_text_field.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_botton.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key, this.editData});
  final dynamic editData;
  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.editData != null) {
      firstNameController.text = widget.editData['first'] ?? '';
      lastNameController.text = widget.editData['last'] ?? '';
      addressController.text = widget.editData['address'] ?? '';
      cityController.text = widget.editData['city'] ?? '';
      stateController.text = widget.editData['state'] ?? '';
      zipCodeController.text = widget.editData['zipcode'] ?? '';
      phoneController.text = widget.editData['phone'] ?? '';
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblack: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CustomHeader(title: 'Add Shipping Address'),

              Form(
                key: globalKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            label: 'First Name',
                            controller: firstNameController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Gap(30),
                        Expanded(
                          child: CustomTextField(
                            label: 'Last Name',
                            keyboardType: TextInputType.text,
                            controller: lastNameController,
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(
                      label: 'Address',
                      controller: addressController,
                      keyboardType: TextInputType.text,
                    ),
                    CustomTextField(
                      label: 'City',
                      controller: cityController,
                      keyboardType: TextInputType.text,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            keyboardType: TextInputType.text,
                            label: 'State',
                            controller: stateController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: CustomTextField(
                            label: 'Zip Code',
                            controller: zipCodeController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(
                      label: 'Phone Number',
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                    ),
                  ],
                ),
              ),
              Gap(250),
              CustomBotton(
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    return;
                  } else {
                    final data = {
                      'first': firstNameController.text,
                      'last': lastNameController.text,
                      'address': addressController.text,
                      'city': cityController.text,
                      'phone': phoneController.text,
                      'zipcode': zipCodeController.text,
                      'state': stateController.text,
                    };
                    Navigator.pop(context, data);
                  }
                },
                text: 'Place Order',
                isSVG: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
