import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: PAGES.about.screenTitle),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SvgPicture.asset("assets/svg/suranect_logo.svg"),
                  const SizedBox(height: 10),
                  Text(
                    'Suranect adalah aplikasi yang menghadirkan konsep "Smart City" ke dalam kehidupan sehari-hari warga Surabaya. Aplikasi ini menyediakan berbagai fitur penting, termasuk informasi tentang kegiatan kota seperti acara, festival, dan kegiatan komunitas yang sedang berlangsung di Surabaya.\n\nSuranect juga mempersembahkan fitur tambahan yang penting untuk membantu warga Surabaya yang ingin baru membuat usahanya, yaitu fitur UMKM. Dengan fitur ini, pengguna dapat dengan mudah mencari informasi tentang UMKM-UMKM di Surabaya dan sekitarnya. Anda dapat menemukan berbagai UMKM dari berbagai sektor.\n\nTidak hanya itu, aplikasi ini juga berfungsi sebagai pintu gerbang untuk mengakses layanan publik kota dengan mudah. Pengguna dapat melaporkan masalah infrastruktur dan fasilitas umum melalui aplikasi ini, dan mereka akan mendapatkan pembaruan status langsung.\n\nKetika berbicara tentang keamanan dan kesejahteraan, Suranect tidak ketinggalan. Fitur keamanan tersebut memungkinkan pengguna untuk melihat informasi penting terkait dengan situasi lalu lintas dan infrastruktur. Sebagai contoh, jika ada jalan yang sedang ditutup atau ada situasi darurat, aplikasi ini akan menampilkan indikator khusus seperti marker atau polyline pada peta, memberikan pengguna informasi yang jelas dan akurat untuk navigasi yang aman dan efisien. Dengan Suranect, Surabaya bergerak menuju masa depan yang lebih cerdas, berkelanjutan, dan terkoneksi dengan baik.',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
