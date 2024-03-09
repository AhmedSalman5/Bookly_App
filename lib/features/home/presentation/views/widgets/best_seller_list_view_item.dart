import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_ratting.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry potter and the goblet of fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                    ),
                ),
                const SizedBox(height: 3,),
                const Text('J.K. Rowling',style: Styles.textStyle14,),
                const SizedBox(height: 3,),
                Row(
                  children: [
                    Text('19.99 \$',style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
                    const Spacer(),
                    const BookRatting(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


