private object Dependencies {
    private object Versions {
        const val androidBuildTools = "7.0.3"
        const val kotlinGradlePlugin = "1.5.31"
    }
    const val androidBuildTools = "com.android.tools.build:gradle:${Versions.androidBuildTools}"
    const val kotlinGradlePlugin = "org.jetbrains.kotlin:kotlin-gradle-plugin:${Versions.kotlinGradlePlugin}"
}

plugins {
    `kotlin-dsl`
    `kotlin-dsl-precompiled-script-plugins`
}

repositories {
    google()
    mavenCentral()
    gradlePluginPortal()
}

dependencies {
    implementation(Dependencies.androidBuildTools)
    implementation(Dependencies.kotlinGradlePlugin)
}
