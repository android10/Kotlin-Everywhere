group = AppConfiguration.group
version = AppConfiguration.version
application {
    mainClass.set(AppConfiguration.mainClass)
    applicationName = AppConfiguration.name
}

plugins {
    // Ktor Specific Plugins
    kotlin(BuildPlugins.kotlinJvm)
    kotlin(BuildPlugins.serialization) version BuildPlugins.Versions.serialization

    // Application Specific Plugins
    id(BuildPlugins.application)

    // Internal Script plugins
    id(ScriptPlugins.compilation)
    id(ScriptPlugins.infrastructure)
}

repositories {
    mavenCentral()
}

dependencies {
    // Application dependencies
    implementation(Libraries.kotlinStd)
    implementation(Libraries.kotlinCoroutines)
    implementation(Libraries.ktorServerCore)
    implementation(Libraries.ktorServerNetty)
    implementation(Libraries.ktorSerialization)
    implementation(Libraries.logback)
}
