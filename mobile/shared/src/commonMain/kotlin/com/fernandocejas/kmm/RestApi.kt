package com.fernandocejas.kmm

import io.ktor.client.*
import io.ktor.client.request.*
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.serialization.json.Json

class RestApi {

    //TODO: Learning purpose: it is never a good idea to use the GlobalScope
    @DelicateCoroutinesApi
    fun usersList(success: (List<User>) -> Unit, failure: (Throwable?) -> Unit) {
        GlobalScope.launch(ApplicationDispatcher) {
            try {
                Json.decodeFromString(UserList.serializer(), HttpClient().get(usersUrl))
                    .users.also { success.invoke(it) }

            } catch (ex: Exception) { failure(ex) }
        }
    }

    companion object {
        const val usersUrl = "http://0.0.0.0:5000/users"
    }
}