# Advance Flutter Chapter 2

<h3 align="center">🔥 2.1 Date Picker, Time Picker, Dialog Box using Material & Cupertino. 🔥</h3>

#

* Material : - an open-source design system built and supported by Google designers and developers


* Cupertino : - The Cupertino widgets in Flutter follow the iOS Human Interface Guidelines to implement the visual design of iOS

## Date Picker 

A widget to select dates from a calendar-like interface, typically used for tasks like picking a birthday or scheduling events. In Flutter, you use 'showDatePicker' to display a date picker dialog.

Features :
<h5> 

* Date Selection : The date picker allows users to choose a date, typically through a calendar interface where users can navigate through months and years.
* Customizable Date Ranges: You can set minimum and maximum dates to constrain the selectable date range, which is useful for defining valid date boundaries.
* Date Formatting: The date picker automatically formats dates according to the device's locale, ensuring localized date display.
* Dialog-based Interaction: The date picker is presented as a modal dialog, blocking other interactions until the user selects a date or cancels the dialog.
* Callback Handling: The date picker returns the selected date as a DateTime object, which you can then use in your application logic.
* Localization: It automatically supports localization, displaying the date in a way that's familiar to users based on their locale.</h5>

<p align="center">
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/d25fdff6-b83d-4cb1-a9fd-16160776b979' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/94cefaca-a92c-4bff-a5b2-8404a5b7c94f' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/034c77cf-9a68-486c-a252-84453fc0acb0' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;

  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_1">👉 📚 Go to dart file 📚 👈</a>
  </div>
  
</p>

## Time Picker 

A widget to select a specific time, often used for alarms or setting appointment times. Flutter provides 'showTimePicker' to display a time picker dialog.

Features :

<h5>
  
* Time Selection: Allows users to select a specific time (hours and minutes), either in 12-hour or 24-hour format.
* Customization: You can customize the appearance and behavior of the time picker to some extent, like changing the initial time or setting a time format.
* Localization: Time pickers can be localized to fit different language and region settings.
* Callback Handling: The time picker returns the selected time as a DateTime object, allowing you to process or use it in your application logic.
* Dialog-based Interaction: The time picker is presented as a modal dialog, which means it temporarily takes focus and requires user interaction to close.
  
</h5>

<p align="center">

  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/fa071b4a-7465-484a-a858-e68e2beb53cc' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/e16208b1-2edb-4714-a9bc-b34b0eefd3ee' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/daa7562c-b720-461d-9e15-44c23e193285' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;

  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_1">👉 📚 Go to dart file 📚 👈</a>
  </div>
</p>

## Cupertino ActionSheet

<h5>
  
* Effortless Integration: Seamlessly integrate our Flutter Cupertino action sheet widget into your project for swift user interactions.
* iOS Native Design: Adheres to the native iOS design standards, providing a consistent and intuitive user experience.
* Tailored Visuals: Customize colors, fonts, and styles effortlessly to align with your app's unique branding and aesthetics.
* Localization Ready: Built-in support for displaying action sheet content in different languages and adapting to various regional preferences.
* Interactive Options: Offers versatile options for user interaction, including buttons, menus, and customizable actions for dynamic app workflows.
</h5>

<img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/544a6630-0685-4ed7-b0f8-c1f7f9ebb353' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;

## Dialog Box

<h5>
  
* Effortless Integration: Incorporate our Flutter Dialog() widget seamlessly into your project, enabling smooth user interactions with minimal setup.
* Native Design Consistency: Follows the native design guidelines of both iOS and Android platforms, ensuring a familiar and intuitive user experience across devices.
* Customizable Appearance: Easily tailor the appearance of your dialogs with customizable options for colors, fonts, and styles, allowing you to maintain brand consistency and match your app's visual identity.
* Localization Support: Facilitates multilingual app development by providing built-in support for localization, enabling your dialogs to adapt to different languages and cultural preferences effortlessly.
* Interactive Elements: Enhance user engagement with interactive elements such as buttons, input fields, and dynamic content, empowering you to create dynamic and responsive dialog experiences for your users.
</h5>

<p><img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/b13ecb65-4aab-4388-a019-6e3d6f8614a4' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;</p>

## Video

<video src="https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/1cd1769a-1475-4377-9b28-7d42727d893a" ></video>

<h3 align="center">🔥 2.2 Cupertino Widgets (Plarform Conevrter using provider) 🔥</h3>

#

* In Flutter, Cupertino widgets refer to a set of widgets designed to emulate the look and feel of iOS applications. These widgets follow the design language established by Apple for iOS   apps, providing a consistent and familiar user experience for iOS users.

* Cupertino widgets offer UI components such as buttons, navigation bars, sliders, switches, and more, all styled according to iOS design principles. Developers can use these widgets to   build cross-platform Flutter applications that closely resemble native iOS apps.

Features

* Adaptive Widgets: The app leverages adaptive widgets to dynamically adjust the UI components based on the selected platform, ensuring a consistent and native user experience.
* Platform Switcher: Users can effortlessly switch between Material Design and Cupertino Design UI platforms using a simple toggle switch.
* Provider Package Integration: State management for the UI platform switching logic is handled efficiently with the Provider package, offering a clean and scalable solution.

## Cupertino App with adaptive widgets
<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/68037744-cc7c-4aaa-adbc-b35928467eb1' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/c47647e3-45ac-446c-8562-74811089c6f4' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/fd315318-090a-4bfa-8293-59b5b52ab417' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/0d3755b6-5c56-4583-8fe0-cf3e08aa0215' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_2/view/cupertinoscreen">👉 📚 Go to dart file 📚 👈</a>
  </div>
</p>

## Material App with adaptive widgets
<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/ced30932-6a0d-4cd9-97dc-149d9c4c500b' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/f6e16250-9088-49b0-bcc7-a478823605bf' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/85ffa322-4d46-4111-a5c3-4e8ec2ef6fba' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;

  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_2/view/materialscreen">👉 📚 Go to dart file 📚 👈</a>
  </div>
  
  <video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/7fd62a41-189e-4473-93bf-7f9d95eb9a6f'></video>
</p>


<h3 align="center">🔥 2.3 CupertinoSliverNavigationBar  & CupertinoListTile 🔥</h3>

#

* The CupertinoSliverNavigationBar widget in Flutter is primarily used for creating navigation bars in iOS-style scrollable app bars. It's typically used within a CustomScrollView as the sliver property to provide navigation controls and title within the app's scrolling content.


Features :


<h5>

* Effortless Integration: Seamless integration of the CupertinoSliverNavigationBar widget into your Flutter project, allowing for smooth navigation experiences with minimal setup.

* Native Design Consistency: Adheres to the design principles of the iOS platform, ensuring a consistent and familiar user interface across iOS devices.

* Native iOS Design: Designed to match the native iOS design guidelines, ensuring a consistent and intuitive user interface on iOS devices.

* Easy Integration**: Simple integration into your Flutter project, allowing for the creation of list items with minimal setup.

* "In my iOS settings screen example, I've leveraged CupertinoListTile.notched and CupertinoListSection.groupInset to improve user engagement and streamline content presentation."


</h5>

<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/d32e51df-d724-41fe-9c07-0155f1046ee7' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/eee774f1-4a04-41fc-9636-386e3a838199' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/6fb9185f-5f6b-4525-9321-b3a10cd0dc31' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;

  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_3/view">👉 📚 Go to dart file 📚 👈</a>
  </div>
  
  <video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/a0389b94-652c-41ef-bcc5-4604780cf90c'></video>
</p>


<h3 align="center">🔥 2.4 CupertinoTabBar, CupertinoSlider & CupertinoSlidingSegmentedControl 🔥</h3>


* CupertinoTabBar : - This widget represents a tab bar similar to the one you'd find in iOS apps. It typically sits at the bottom of the screen and allows users to switch between different sections or views of the app. Each tab in the bar typically corresponds to a different page or screen within the app.

* CupertinoSlider : - This widget is used to allow users to select a value from a range by sliding a thumb along a horizontal track. It resembles the slider component in iOS. It's commonly used for selecting values like volume, brightness, or any other continuous value within a specified range.

* CupertinoSlidingSegmentedControl : - This widget is a segmented control that allows users to choose from a fixed number of mutually exclusive options. It's similar to a tab bar, but it typically appears horizontally aligned and allows only one option to be selected at a time. Users can swipe left or right to select different options. It's useful for presenting a small set of options where only one can be active at any given time.

<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/7f150bf1-2058-4330-8328-c50c7e51bb7a' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/2e83901d-8706-4a82-91b8-4bab2a478b3e' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/4c1aab7e-5927-445a-bb0a-47652af64fef' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/a57d8c64-29b7-4fd4-94c3-962d457acf43' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/9e4d3fc9-1acf-4b69-b291-c1ed99f01846' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/99c3b179-4d03-4d3a-99fc-b0b1148a98e0' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  
  <div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_4">👉 📚 Go to dart file 📚 👈</a>
  </div>
  
  <video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/8d4ceb87-1b9a-49b4-a449-c1295c56433d'></video>
</p>



<h3 align="center">🔥 2.5 Page View & BottomNavigationBar 🔥</h3>


PageView
* PageView is a widget that allows the user to swipe horizontally or vertically through a list of pages. It's often used to create onboarding screens, image carousels, or other multi-page interfaces.

Key Properties:
<h5>
  
* children: A list of widgets to display as pages.
* controller: A PageController to control the scroll behavior and listen to page changes.
* scrollDirection: The axis along which the pages will scroll (horizontal by default).
</h5>

<video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/cdb10de4-3884-47a0-8829-bfb98e55aacc'></video>

<div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_5/view/task_1">👉 📚 Go to dart file 📚 👈</a>
  </div>

BottomNavigationBar
* BottomNavigationBar is a widget that displays a bar at the bottom of the screen with multiple items. It's typically used for navigation in an app with a few top-level views.

Key Properties:
<h5>

* items: A list of BottomNavigationBarItem widgets to display in the bar.
* currentIndex: The index of the selected item.
* onTap: A callback that's called when an item is tapped.
* type: Defines the layout and behavior of the bar, such as fixed or shifting.
</h5>

<video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/6e0f7939-74d9-402f-9b23-be84531291c8'></video>

<div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_5/view/task_2">👉 📚 Go to dart file 📚 👈</a>
</div>

<h3 align="center">🔥 2.6 CupertinoActionSheet & CupertinoContextMenu 🔥</h3>

CupertinoActionSheet
* The CupertinoActionSheet widget in Flutter is used to present a modal action sheet, which typically slides up from the bottom of the screen. It provides a way to offer users a set of choices related to the current context. Action sheets are commonly used in iOS apps for user actions that need to be confirmed or for presenting multiple options.

Key Features:
<h5>

* Title: Optional title for the action sheet.
* Message: Optional message providing additional information about the choices.
* Actions: A list of actions (buttons) that the user can choose from.
* Cancel Button: An optional button to dismiss the action sheet without making a choice.</h5>
<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/abc373b2-1015-4320-9b84-64ee4c150893' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/bbce45ec-1c98-419d-97a5-b92a985c4092' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/9c3ea9b6-b6c9-4efe-9932-59a345e02939' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
</p>

<video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/7b62c523-c268-44c4-aae3-0700bb7df9be'></video>

<div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_6/view/cupertinocontextmenu">👉 📚 Go to dart file 📚 👈</a>
</div>

CupertinoContextMenu
* The CupertinoContextMenu widget in Flutter provides a full-screen modal overlay that appears when the user long-presses on an item. This widget is used to display contextual actions for an item, similar to a context menu in desktop applications or the long-press context menu in iOS.

Key Features:
<h5>

* Child: The widget that triggers the context menu when long-pressed.
* Actions: A list of contextual actions to display.</h5>

<p>
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/1d72f282-7d7a-415b-80d0-018cea4c65ce' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/e5ab0564-9ab3-4e98-9a9f-47ee1515cc00' width = 250>&nbsp;&nbsp;&nbsp;&nbsp;
</p>

<video src='https://github.com/Aksharpatel06/adv_flutter_ch2/assets/143181114/149c2bcd-8b42-4c59-bcde-3f9fb5b700b1'></video>

<div align="center">
    <a href="https://github.com/Aksharpatel06/adv_flutter_ch2/tree/master/lib/ch_2/task_6/view/cupertinoactionsheet">👉 📚 Go to dart file 📚 👈</a>
</div>
