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
## video
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
