# food_app

<p align="center">
  <img src="https://img.shields.io/github/stars/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/forks/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/actions/workflow/status/SinaSys/flutter_japanese_restaurant_app/main.yml?label=CI&logo=github">
  <img src="https://img.shields.io/github/v/release/SinaSys/flutter_japanese_restaurant_app?label=Release&logo=semantic-release">
  <img src="https://img.shields.io/github/last-commit/SinaSys/flutter_japanese_restaurant_app?label=Last%20commit">
</p>

 food app is a design implementation of [food app](https://dribbble.com/shots/14752424-Japan-Restaurant-App-Food-App/attachments/6455673?mode=media)

![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/japanese_restaurant_app_dark.png?raw=true)
![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/japanese_restaurant_app_light.png?raw=true)



  <br/>

## GetX 



|               Version               |                 Getx                    |                                                                                                       
|:-----------------------------------:|:------------------------------------------------------------------------------------------------------:| 



## Screenshots (Light mode)

Preview                    |   Home screen             |  Food Detail Screen    |  Cart Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/preview.gif?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/food_list_screen_light.png?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/food_detail_screen_light.png?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/cart_screen_light.png?raw=true)

## Screenshots (Dark mode)

Favorite screen            |   Home screen             |  Food Detail Screen       |  Cart Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/favorite_screen_dark.png?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/food_list_screen_dark.png?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/food_detail_screen_dark.png?raw=true)|![](https://github.com/SinaSys/flutter_japanese_restaurant_app/blob/master/screenshots/cart_screen_dark.png?raw=true)


## 🚀 Features :
```
• Dynamically change between light and dark theme
• Bottom navigation animation when switch from one screen to another
• Fade animation for food items in detail screen and list views
• Delete single food item from cart by swipe item to right side
• Automatically delete single item from cart by set its value to zero
• Increase or Decrease quantity for each food item in cart screen
• Display food list on the food list screen
• Display Detail of each food on food detail screen
• Real-time calculation of total price in the cart screen
• Add desired food to the favorite screen
• Select quantity for each item on detail screen
• Filter foods by category
• State management with GetX | Cubit | Bloc | Provider
```

## Directory Structure (GetX version)
```
📂lib
 │───main.dart  
 │───📂core  
 |   │──app_asset.dart
 |   │──app_color.dart
 |   │──app_data.dart
 |   │──app_icon.dart
 |   │──app_style.dart
 |   │──app_theme.dart
 |   └──app_extension.dart
 └───📂src
     │────📂model
     │    │──bottom_navigation_item.dart
     |    │──food.dart
     |    └──food_category.dart
     └────📂view
     |    │───📂screen
     |    |   |──cart_screen.dart
     |    |   |──favorite_screen.dart
     |    |   |──food_detail_screen.dart
     |    |   |──food_list_screen.dart
     |    |   |──home_screen.dart
     |    |   └──profile_screen.dart
     |    │───📂widget
     │    |   |──counter_button.dart
     │    |   |──custom_page_route.dart
     │    |   |──empty_widget.dart
     │    |   |──fade_animation.dart
     │    |   |──food_list_view.dart
     │    |   |──page_transition.dart
     |    |   └──scale_animation.dart
     └────📂controller
          └──food_controller.dart
```
