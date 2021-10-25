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

plugins {
    // Application Specific Plugins
    id(BuildPlugins.androidApplication)
    kotlin(BuildPlugins.kotlinAndroid)

    // Internal Script plugins
    id(ScriptPlugins.compilation)
    id(ScriptPlugins.infrastructure)
}

android {
    compileSdk = Android.compileSdk

    defaultConfig {
        applicationId = Android.applicationId
        minSdk = Android.minSdk
        targetSdk = Android.targetSdk
    }
}

dependencies {
    implementation(project(":${Projects.shared}"))
    implementation(Kotlin.Libraries.stdLib)
    implementation(Kotlin.Libraries.coroutines)
    implementation(Android.Libraries.material)
    implementation(Android.Libraries.appCompat)
    implementation(Android.Libraries.constraintLayout)
}