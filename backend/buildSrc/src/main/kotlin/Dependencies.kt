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

object AppConfiguration {
    const val group = "com.fernandocejas.mpp"
    const val version = "1.0"
    const val mainClass = "io.ktor.server.netty.EngineMain"
    const val name = "ktor-api"
}

object Kotlin {
    const val std = "1.5.31"
    const val ktor = "1.6.3"
    const val coroutines = "1.5.2"
}

object BuildPlugins {
    object Versions {
        const val gradleVersion = "7.2"
        const val serialization = Kotlin.std
    }

    const val application = "application"
    const val kotlinJvm = "jvm"
    const val serialization = "plugin.serialization"
}

object ScriptPlugins {
    const val compilation = "scripts.compilation"
    const val infrastructure = "scripts.infrastructure"
}

object Libraries {
    object Versions {
        const val logBackVersion = "1.2.3"
    }

    const val kotlinStd          = "org.jetbrains.kotlin:kotlin-stdlib-jdk8:${Kotlin.std}"
    const val kotlinCoroutines   = "org.jetbrains.kotlinx:kotlinx-coroutines-core:${Kotlin.coroutines}"
    const val ktorServerCore     = "io.ktor:ktor-server-core:${Kotlin.ktor}"
    const val ktorServerNetty    = "io.ktor:ktor-server-netty:${Kotlin.ktor}"
    const val ktorSerialization  = "io.ktor:ktor-serialization:${Kotlin.ktor}"
    const val logback            = "ch.qos.logback:logback-classic:${Versions.logBackVersion}"
}
