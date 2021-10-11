# KMM - Android and iOS

**Kotlin Multiplatform Mobile:** this part includes a shared codebase (logic) that both iOS and Android projects are including.

![kmm-basic-project-structure](https://user-images.githubusercontent.com/1360604/136800752-eebfdb82-4b43-44cd-8a77-016dd30af645.png)

## Building and Running this project

###  From the command line

 - `./gradlew clean build`
 - `./gradlew test`

### From android studio

 - It is possible to run both applications from Android Studio by creating running configurations. Make sure you have installed the KMM plugin which unfortunately runs only on Mac due to dependencies on Xcode tools in order to run the iOS part.
 - If you are using Linux, you are mostly limited to work on the android and shared codebase part.

### From Xcode

 - You should use Xcode to work the iOS part on Swift (with AppCode is also possible).
 - Compilation and Run should work out of the box.

## References

 - [Kotlin Multiplatform Official Documentation](https://kotlinlang.org/docs/mpp-intro.html)
 - [Different Approaches in Consuming KMM Modules](https://medium.com/wantedly-engineering/different-approaches-in-consuming-kmm-modules-in-ios-7957c722b114)

## License

    Copyright 2021 Fernando Cejas

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


![http://www.fernandocejas.com](https://github.com/android10/Sample-Data/blob/master/android10/android10_logo_big.png)

<a href="https://www.buymeacoffee.com/android10" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>
