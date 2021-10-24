package com.fernandocejas.mpp

import kotlinx.serialization.Serializable

@Serializable
data class User(val id: Int, val email: String, val name: String)
