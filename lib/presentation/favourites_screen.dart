import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/data/datasource/local_datasource/book_local_data_source.dart';
import 'package:my_e_book/presentation/components/category/book_card_widget.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  FavouritesDb favouritesDb = FavouritesDb();
  Set favourites = {};

  Future readData() async {
    List<Map> response = await favouritesDb.read("favourites");
    favourites.addAll(response);
    if (mounted) {
      setState(() {});
    }
  }

  bool isFavourites(int bookId) {
    return favourites.any((element) => element[AppStrings.idDb] == bookId);
  }

  void deleteAFavourite({required int bookId}) {
    favouritesDb.delete(
        AppStrings.favouritesTableName, "${AppStrings.idDb} = $bookId");

    favourites.removeWhere((element) => element[AppStrings.idDb] == bookId);
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        actions: [
          IconButton(
              onPressed: () {
                FavouritesDb.deleteAllDatabase();
                setState(() {});
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: favourites.length,
        separatorBuilder: (context, index) => SizedBox(
          height: AppSize.s5.h,
        ),
        itemBuilder: (context, index) => BookCardWidget(
          imageUrl: favourites.elementAt(index)[AppStrings.imageUrlDb],
          onTap: () {},
          bookTitle: favourites.elementAt(index)[AppStrings.titleDb],
          author: favourites.elementAt(index)[AppStrings.authorDb],
          downloadCount:
              favourites.elementAt(index)[AppStrings.downloadCountDb],
          favouritesOnTap: () {
            deleteAFavourite(
                bookId: favourites.elementAt(index)[AppStrings.idDb]);
          },
          favouritesIcon: Icons.favorite,
        ),
      ),
    );
  }
}