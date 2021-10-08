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
package scripts

plugins {
    id("application") apply false
}

object Jvm {
    const val TARGET = "1.8"
    val SOURCE_COMPATIBILITY = JavaVersion.VERSION_1_8
}

val compileKotlin: org.jetbrains.kotlin.gradle.tasks.KotlinCompile by tasks
val compileTestKotlin: org.jetbrains.kotlin.gradle.tasks.KotlinCompile by tasks

compileKotlin.kotlinOptions { jvmTarget = Jvm.TARGET }
compileTestKotlin.kotlinOptions { jvmTarget = Jvm.TARGET }

java {
    sourceCompatibility = Jvm.SOURCE_COMPATIBILITY
    targetCompatibility = Jvm.SOURCE_COMPATIBILITY
}
