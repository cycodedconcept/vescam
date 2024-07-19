import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLanguageScreen extends StatelessWidget {
  const AddLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
        ),
        title: const Text(
          "Add a Language",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Suggested",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      _tile(
                        title: "Hausa (Najeriya)",
                      ),
                      _tile(
                        title: "Yoruba (Ede Yoruba)",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "All Languages",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      _tile(
                        title: "Indonesia",
                      ),
                      _tile(
                        title: "Portugues",
                      ),
                      _tile(
                        title: "FranCais",
                      ),
                      _tile(
                        title: "العربية",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _tile({title}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
        ),
      ),
    );
  }
}
