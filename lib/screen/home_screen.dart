import 'package:flutter/material.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/screen/qr_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const TextField(
                    //   onSubmitted: (){},
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Искать в Maline',
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 110,
                  decoration: BoxDecoration(
                    color: AppColors.splashColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.smartphone,
                          color: AppColors.white,
                          size: 35,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Сканируй QR-код и заказывай \n прямо в заведении',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QrScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 25),
                Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              alignment: FractionalOffset.center,
                              image: AssetImage('assets/image1.png'),
                            )),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 50,
                      child: Text(
                        'Еда',
                        style: TextStyle(
                            fontSize: 32,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 50,
                      child: Text(
                        'Из кафе и \nресторанов',
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                            color: AppColors.conColor,
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              alignment: FractionalOffset.center,
                              image: AssetImage('assets/image2.png'),
                            )),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 50,
                      child: Text(
                        'Бьюти',
                        style: TextStyle(
                            fontSize: 32,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 50,
                      child: Text(
                        'Салоны красоты и \nи товары',
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      Text(
                        'Скоро в Malina',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.listView1,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.listView1),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Вакансии'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.listView2,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.listView2),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Маркет'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.listView3,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.listView3),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Цветы'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.listView4,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.listView4),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Спорт'),
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
