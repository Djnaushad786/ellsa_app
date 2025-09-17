import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // 📱 screen size
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.01,
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      color: Colors.black, size: width * 0.06),
                  SizedBox(width: width * 0.02),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045,
                          ),
                        ),
                        Text(
                          "Inner Circle, Connaught Place, New Delhi, Del...",
                          style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.search, color: Colors.black, size: width * 0.06),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.03,
                vertical: height * 0.01,
              ),
              height: height * 0.22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/4065876/pexels-photo-4065876.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [

                  Container(
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.015,
                        horizontal: width * 0.03,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MenuItem(icon: Icons.house_siding, title: "Renovation"),
                          MenuItem(icon: Icons.build, title: "Handyman"),
                          MenuItem(icon: Icons.local_shipping, title: "Home shifting"),
                          MenuItem(icon: Icons.grass, title: "Gardening"),
                          MenuItem(icon: Icons.delete_sweep, title: "Declutter"),
                          MenuItem(icon: Icons.format_paint, title: "Painting"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: width > 600 ? 4 : 3,
                        crossAxisSpacing: width * 0.04,
                        mainAxisSpacing: height * 0.015,
                        childAspectRatio: width > 600 ? 1.2 : 1,
                        children: const [
                          GridItem(image: "assets/images/renovation.jpg", title: "Renovation"),
                          GridItem(image: "assets/images/handyman.jpg", title: "Handyman"),
                          GridItem(image: "assets/images/homeshifting.jpg", title: "Home shifting"),
                          GridItem(image: "assets/images/gardening.jpg", title: "Gardening"),
                          GridItem(image: "assets/images/declutter.jpg", title: "Declutter"),
                          GridItem(image: "assets/images/surface.jpg", title: "Painting"),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.02),


                    _sectionTitle(context, "Popular Services"),
                    SizedBox(
                      height: height * 0.22,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ServiceCard(image: "assets/images/kitchen.jpg", title: "Kitchen Cleaning"),
                          ServiceCard(image: "assets/images/sofa.png", title: "Sofa Cleaning"),
                          ServiceCard(image: "assets/images/fullhome.jpg", title: "Full Home Cleaning"),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.02),

                    _sectionTitle(context, "Cleaning Services"),
                    SizedBox(
                      height: height * 0.22,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ServiceCard(image: "assets/images/kitchens.png", title: "Kitchen Cleaning"),
                          ServiceCard(image: "assets/images/sofa.png", title: "Sofa Cleaning"),
                          ServiceCard(image: "assets/images/homefull.png", title: "Full Home Cleaning"),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.02),


                    SizedBox(
                      height: height * 0.12,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FeatureItem(image: Image.asset("assets/images/ondemand.jpg", height: height * 0.05), text: "On Demand / Scheduled"),
                          FeatureItem(image: Image.asset("assets/images/verified.jpg", height: height * 0.05), text: "Verified\n Partners"),
                          FeatureItem(image: Image.asset("assets/images/satisfaction.jpg", height: height * 0.05), text: "Satisfaction\nGuarantee"),
                          FeatureItem(image: Image.asset("assets/images/upfront.jpg", height: height * 0.05), text: "Upfront\nPricing"),
                          FeatureItem(image: Image.asset("assets/images/highly.jpg", height: height * 0.05), text: "Highly Trained\nProfessionals"),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.02),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.security, color: Colors.black, size: width * 0.05),
                              SizedBox(width: width * 0.02),
                              Text(
                                "Why Choose Us",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          WhyChooseUsCard(
                            image: "assets/images/quality.jpg",
                            title: "Quality Assurance",
                            subtitle: "Your satisfaction is guaranteed",
                          ),
                          SizedBox(height: height * 0.015),
                          WhyChooseUsCard(
                            image: "assets/images/fixed.jpg",
                            title: "Fixed Prices",
                            subtitle: "No hidden costs, all the prices are known\nand fixed before booking",
                          ),
                          SizedBox(height: height * 0.015),
                          WhyChooseUsCard(
                            image: "assets/images/hassle.jpg",
                            title: "Hassle Free",
                            subtitle: "Convenient, time saving and secure",
                          ),

                          SizedBox(height: height * 0.03),


                          Container(
                            width: double.infinity,
                            color: Colors.black,
                            padding: EdgeInsets.all(width * 0.04),
                            child: Text(
                              "Best-in Class Safety Measures",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade100,
                            padding: EdgeInsets.all(width * 0.04),
                            child: Column(
                              children: [
                                SafetyCard(
                                  image: "assets/images/mask.jpg",
                                  title: "Usage of masks, gloves & sanitisers",
                                  subtitle: "Our staff uses proper safety gear during services.",
                                ),
                                SizedBox(height: height * 0.02),
                                SafetyCard(
                                  image: "assets/images/distance.jpg",
                                  title: "Low-contact Service Experience",
                                  subtitle: "Seamless and safe service with minimal physical contact.",
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: height * 0.03),

                          Column(
                            children: [
                              Text(
                                "HASSLE FREE QUALITY SERVICE",
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                "V 1.0",
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: width * 0.02),
        ],
      ),
    );
  }
}


class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const MenuItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: width * 0.04),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: width * 0.035),
          ),
        ),
      ],
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String title;
  const GridItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: width * 0.08, width: width * 0.08, fit: BoxFit.contain),
          SizedBox(height: width * 0.015),
          Text(
            title,
            style: TextStyle(fontSize: width * 0.03, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String image;
  final String title;
  const ServiceCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.35,
      margin: EdgeInsets.only(right: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image, height: width * 0.25, width: width * 0.35, fit: BoxFit.cover),
          ),
          SizedBox(height: width * 0.015),
          Text(
            title,
            style: TextStyle(fontSize: width * 0.03, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final Image image;
  final String text;
  const FeatureItem({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.2,
      margin: EdgeInsets.only(left: width * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          SizedBox(height: width * 0.01),
          Text(
            text,
            style: TextStyle(fontSize: width * 0.025, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class WhyChooseUsCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const WhyChooseUsCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: width * 0.1, width: width * 0.1, fit: BoxFit.contain),
          SizedBox(width: width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: width * 0.035, fontWeight: FontWeight.bold)),
                SizedBox(height: width * 0.015),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: width * 0.03, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SafetyCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const SafetyCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, height: width * 0.12, width: width * 0.12, fit: BoxFit.contain),
        SizedBox(width: width * 0.04),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: width * 0.035, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: width * 0.01),
              Text(
                subtitle,
                style: TextStyle(fontSize: width * 0.03, color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
