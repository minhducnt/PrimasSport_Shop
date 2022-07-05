part of lib_hmpage;

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(5)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(20),
      ),
      decoration: BoxDecoration(
        color: AppColors.kSecondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Ngày 7.7 Siêu Sale\n",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                )),
            TextSpan(
              text: "Giảm giá sốc 20%",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(25),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
