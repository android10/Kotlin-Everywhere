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
import org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget

plugins {
    kotlin(BuildPlugins.kotlinMultiPlatform)
    id(BuildPlugins.kotlinSerialization) version BuildPlugins.Versions.kotlinSerialization
    id(BuildPlugins.androidLibrary)
}

kotlin {
    android()

    val iosTarget: (String, KotlinNativeTarget.() -> Unit) -> KotlinNativeTarget = when {
        System.getenv("SDK_NAME")?.startsWith("iphoneos") == true -> ::iosArm64
        System.getenv("NATIVE_ARCH")?.startsWith("arm") == true -> ::iosSimulatorArm64
        else -> ::iosX64
    }

    iosTarget("ios") {
        binaries {
            framework {
                baseName = Projects.shared
            }
        }
    }

    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation(Kotlin.Libraries.stdLib)
                implementation(Kotlin.Libraries.coroutines)
                implementation(Kotlin.Libraries.ktorClient)
                implementation(Kotlin.Libraries.serialization)
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(kotlin(Shared.TestLibraries.testCommon))
                implementation(kotlin(Shared.TestLibraries.testAnnotationCommon))
                implementation(Shared.TestLibraries.kluent)
            }
        }

        val androidMain by getting {
            dependencies {
                implementation(Android.Libraries.coreKtx)
                implementation(Android.Libraries.coroutines)
                implementation(Android.Libraries.ktorClient)
            }
        }
        val androidTest by getting {
            dependencies {
                implementation(kotlin(Android.TestLibraries.testJunit))
            }
        }

        val iosMain by getting {
            dependencies {
                implementation(IOS.Libraries.ktorClient)
            }
        }
        val iosTest by getting
    }
}

android {
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")

    compileSdk = Android.compileSdk
    defaultConfig {
        minSdk = Android.minSdk
        targetSdk = Android.targetSdk
    }
}
