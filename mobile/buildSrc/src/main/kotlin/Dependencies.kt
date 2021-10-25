/**
 * Copyright (C) 2021 Fernando Cejas Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

object Kotlin {
    object Versions {
        const val std = "1.5.31"
        const val ktor = "1.6.3"
        const val coroutines = "1.5.2-native-mt"
        const val serialization = "1.2.2"
    }

    object Libraries {
        const val stdLib = "org.jetbrains.kotlin:kotlin-stdlib-common:${Versions.std}"
        const val coroutines = "org.jetbrains.kotlinx:kotlinx-coroutines-core:${Versions.coroutines}"
        const val ktorClient = "io.ktor:ktor-client-core:${Versions.ktor}"
        const val serialization = "org.jetbrains.kotlinx:kotlinx-serialization-json:${Versions.serialization}"
    }

    object TestLibraries {
        const val testCommon = "test-common"
        const val testAnnotationCommon = "test-annotations-common"
    }
}

object BuildPlugins {
    object Versions {
        const val gradleVersion = "7.2"
        const val kotlinSerialization = "1.6.0-M1"
    }

    const val androidApplication = "com.android.application"
    const val androidLibrary = "com.android.library"
    const val kotlinAndroid = "android"
    const val kotlinSerialization = "org.jetbrains.kotlin.plugin.serialization"
    const val kotlinMultiPlatform = "multiplatform"
}

object ScriptPlugins {
    const val compilation = "scripts.compilation"
    const val infrastructure = "scripts.infrastructure"
}

object Projects {
    const val shared = "shared"
}

object Android {
    const val applicationId = "com.fernandocejas.kmm.android"
    const val minSdk = 26
    const val compileSdk = 31
    const val targetSdk = 31

    object Libraries {
        private object Versions {
            const val material = "1.4.0"
            const val appCompat = "1.3.1"
            const val constraintLayout = "2.1.1"
            const val coreKtx = "1.6.0"
            const val coroutines = Kotlin.Versions.coroutines
            const val ktor = Kotlin.Versions.ktor
        }

        // Android App UI Layer
        const val material = "com.google.android.material:material:${Versions.material}"
        const val appCompat = "androidx.appcompat:appcompat:${Versions.appCompat}"
        const val constraintLayout = "androidx.constraintlayout:constraintlayout:${Versions.constraintLayout}"

        // Android Shared Logic
        const val coreKtx = "androidx.core:core-ktx:${Versions.coreKtx}"
        const val coroutines = "org.jetbrains.kotlinx:kotlinx-coroutines-android:${Versions.coroutines}"
        const val ktorClient = "io.ktor:ktor-client-android:${Versions.ktor}"
    }

    object TestLibraries {
        private object Versions {
            const val jUnit = "5.8.1"
        }

        const val testJunit = "test-junit"
        const val jUnit = "org.junit.jupiter:junit-jupiter-engine:${Versions.jUnit}"
    }
}

object IOS {
    object Libraries {
        private object Versions {
            const val ktor = Kotlin.Versions.ktor
        }

        //iOS Shared Logic
        const val ktorClient = "io.ktor:ktor-client-ios:${Versions.ktor}"
    }

    object TestLibraries {
        private object Versions {}
    }
}

object Shared {
    object Libraries {
        private object Versions {}
    }

    object TestLibraries {
        private object Versions {}
    }
}
