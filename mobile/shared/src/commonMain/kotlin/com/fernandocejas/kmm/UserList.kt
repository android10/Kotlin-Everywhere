package com.fernandocejas.kmm

import kotlinx.serialization.Serializable

@Serializable
data class UserList(val users: List<User>)