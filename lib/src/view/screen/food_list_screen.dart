import 'package:get/get.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_app/core/app_data.dart';
import 'package:restaurant_app/core/app_color.dart';
import 'package:restaurant_app/core/app_extension.dart';
import 'package:restaurant_app/src/model/food_category.dart';
import 'package:restaurant_app/src/controller/food_controller.dart';
import 'package:restaurant_app/src/view/widget/food_list_view.dart';

final FoodController controller = Get.put(FoodController());

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});
// app bar
  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(FontAwesomeIcons.dice),
        onPressed: controller.changeTheme,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: LightThemeColor.accent,
          ),
          Text("Location", style: context.bodyLarge)
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            badgeStyle: const BadgeStyle(
              badgeColor: LightThemeColor.accent,
            ),
            badgeContent: const Text(
              "2",
              style: TextStyle(color: Colors.white),
            ),
            position: BadgePosition.topStart(start: -3),
            child: const Icon(Icons.notifications_none, size: 30),
          ),
        )
      ],
    );
  }

// search bar
  Widget _searchBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search food',
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Morning, Sina",
                style: context.headlineSmall,
              ).fadeAnimation(0.2),
              Text(
                "What do you want to eat \ntoday",
                style: context.displayLarge,
              ).fadeAnimation(0.4),
              _searchBar(),
              Text(
                "Available for you",
                style: context.displaySmall,
              ).fadeAnimation(0.4),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  child: GetBuilder(
                    builder: (FoodController controller) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: AppData.categories.length,
                        itemBuilder: (_, index) {
                          FoodCategory category = AppData.categories[index];
                          return GestureDetector(
                            onTap: () {
                              controller.filterItemByCategory(category);
                            },
                            child: Container(
                              width: 100,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: category.isSelected
                                    ? LightThemeColor.accent
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Text(
                                category.type.name.toCapital,
                                style: context.headlineMedium,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, __) {
                          return const Padding(
                            padding: EdgeInsets.only(right: 15),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              GetBuilder(
                builder: (FoodController controller) {
                  return FoodListView(foods: controller.filteredFoods);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best food of the week",
                      style: context.displaySmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "See all",
                        style: context.headlineMedium.copyWith(
                          color: LightThemeColor.accent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FoodListView(foods: AppData.foodItems, isReversedList: true),
            ],
          ),
        ),
      ),
    );
  }
}
