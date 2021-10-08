package com.fernandocejas.mpp

import io.ktor.application.*
import io.ktor.features.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.serialization.*
import kotlinx.serialization.json.Json

fun main(args: Array<String>): Unit = io.ktor.server.netty.EngineMain.main(args)

fun Application.module() {

    // Ktor Features
    install(ContentNegotiation) {
        json(Json {
            prettyPrint = true
            isLenient = true
        })
    }

    // Api Routes
    routing {
        get("/") {
            call.respondText("Hello Ktor Api: Query the endpoint /users")
        }

        get("/users") {
            call.respond(
                listOf(
                    User("Ironman", "ironman@fernandocejas.com"),
                    User("Thor", "thor@fernandocejas.com"),
                    User("Hulk", "hulk@fernandocejas.com"),
                )
            )
        }
    }
}
