import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  'company_1_date'.tr,
                  //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('company_name_1'.tr,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    Text('designation_1'.tr,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('company_profile_1_1'.tr),
                    Text(
                      'company_profile_1_2'.tr,
                    ),
                    Text('company_profile_1_3'.tr),
                    Text('company_profile_1_4'.tr),
                    Text('company_profile_1_5'.tr),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  'company_2_date'.tr,
                  //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('company_name_2'.tr,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    Text('designation_2'.tr,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('company_profile_2_1'.tr),
                    Text(
                      'company_profile_2_2'.tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
