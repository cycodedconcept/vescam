import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class SupportAndHelpScreen extends StatelessWidget {
  const SupportAndHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
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
          "Support",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    "Hi , how can we help\nyou today?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: const Icon(IconlyLight.search,
                            color: Color(0xffADADAD)),
                        hintText: "Search",
                        hintStyle: const TextStyle(
                            color: Color(0xff9B9B9B), fontFamily: "OpenMed"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xffF1F1F1), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff001F3F), width: 1.5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xffFF0022), width: 1.5)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Quick Links",
                          style: const TextStyle(
                            fontFamily: "OpenMed",
                            color: Color(0xff030206),
                            fontSize: 16,
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  color: Color(0xff00BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          _quickLinks(
                              title: "Chat with Vescan chat assistant",
                              action: () {},
                              icon: Iconsax.message_2),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          _quickLinks(
                              title: "Get in touch",
                              action: () {},
                              icon: Iconsax.call_calling),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          _quickLinks(
                              title: "Make a report",
                              action: () {},
                              icon: Iconsax.document_text_1),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          _quickLinks(
                              title: "Question related to the app",
                              action: () {},
                              icon: Icons.help_outline),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Recommended",
                          style: const TextStyle(
                            fontFamily: "OpenMed",
                            color: Color(0xff030206),
                            fontSize: 16,
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                  color: Color(0xff00BFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          _recommendedTile(
                            title: "I have a problem with updating my app",
                            action: () {},
                          ),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          _recommendedTile(
                            title: "I have a problem with updating my app",
                            action: () {},
                          ),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile _quickLinks({title, action, icon}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      onTap: action,
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
      ),
      trailing: const Icon(
        Iconsax.arrow_right_3,
        color: const Color(0xffADADAD),
      ),
    );
  }

  ListTile _recommendedTile({title, action}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      onTap: action,
      title: Text(
        title,
        style: const TextStyle(
            color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
      ),
      trailing: const Icon(
        Iconsax.arrow_right_3,
        color: Color(0xffADADAD),
      ),
    );
  }
}
